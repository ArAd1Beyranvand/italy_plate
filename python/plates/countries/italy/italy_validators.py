"""Port of italy_plate/lib/src/italy_validators.dart."""
from __future__ import annotations

import re
from dataclasses import dataclass

from plates.core.validators.plate_validator import GatedPlateValidator, PlateEntry, PlateValidation, is_digits_of_length

_LETTERS = r"[A-HJ-NP-TV-Z]{2}"


class ItalyValidator(GatedPlateValidator):
    gate_group = "number"
    reason_prefix = "The prefix is two letters (no I, O, Q, U)."
    reason_number = "The number is three digits, or five on a motorcycle."
    reason_suffix = "The suffix is two letters (no I, O, Q, U)."

    def judge(self, entry: PlateEntry) -> PlateValidation:
        if re.fullmatch(_LETTERS, entry.group("prefix")) is None:
            return PlateValidation.invalid(self.reason_prefix)
        suffix = entry.group("suffix")
        if not is_digits_of_length(entry.group("number"), 5 if not suffix else 3):
            return PlateValidation.invalid(self.reason_number)
        if suffix and re.fullmatch(_LETTERS, suffix) is None:
            return PlateValidation.invalid(self.reason_suffix)
        return PlateValidation.valid()


@dataclass(frozen=True)
class ItalyDiplomaticValidator(GatedPlateValidator):
    digits: int = 4
    consular: bool = False
    gate_group = "number"
    reason_number = "The number is three or four digits."
    reason_code = "The country code is two letters."
    reason_consular = "Consular codes leave out Q and V."

    def judge(self, entry: PlateEntry) -> PlateValidation:
        if not is_digits_of_length(entry.group("number"), self.digits):
            return PlateValidation.invalid(self.reason_number)
        code = entry.group("code")
        if re.fullmatch(r"[A-Z]{2}", code) is None:
            return PlateValidation.invalid(self.reason_code)
        if self.consular and ("Q" in code or "V" in code):
            return PlateValidation.invalid(self.reason_consular)
        return PlateValidation.valid()
