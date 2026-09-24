local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = {}
Mortgage = L0_1
L0_1 = Mortgage
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = Config
  L1_2 = L1_2.Mortgage
  L2_2 = A0_2 or L2_2
  if A0_2 then
    L2_2 = A0_2.mortgageTerms
  end
  if not L2_2 then
    L2_2 = {}
  end
  L3_2 = type
  L4_2 = L2_2.term
  L3_2 = L3_2(L4_2)
  if "number" == L3_2 then
    L3_2 = L2_2.term
    if L3_2 then
      goto lbl_19
    end
  end
  L3_2 = L1_2.term
  ::lbl_19::
  L4_2 = type
  L5_2 = L2_2.downPaymentPercent
  L4_2 = L4_2(L5_2)
  if "number" == L4_2 then
    L4_2 = L2_2.downPaymentPercent
    if L4_2 then
      goto lbl_28
    end
  end
  L4_2 = L1_2.downPaymentPercent
  ::lbl_28::
  L5_2 = type
  L6_2 = L2_2.interestRate
  L5_2 = L5_2(L6_2)
  if "number" == L5_2 then
    L5_2 = L2_2.interestRate
    if L5_2 then
      goto lbl_37
    end
  end
  L5_2 = L1_2.interestRate
  ::lbl_37::
  L6_2 = type
  L7_2 = L2_2.interval
  L6_2 = L6_2(L7_2)
  if "number" == L6_2 then
    L6_2 = L2_2.interval
    if L6_2 then
      goto lbl_46
    end
  end
  L6_2 = L1_2.interval
  ::lbl_46::
  L7_2 = L2_2.enabled
  if nil == L7_2 then
    L7_2 = L1_2.enabled
    if L7_2 then
      goto lbl_53
    end
  end
  L7_2 = L2_2.enabled
  ::lbl_53::
  L8_2 = {}
  L8_2.enabled = L7_2
  L9_2 = math
  L9_2 = L9_2.max
  L10_2 = 1
  L11_2 = math
  L11_2 = L11_2.floor
  L12_2 = L3_2
  L11_2, L12_2, L13_2 = L11_2(L12_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  L8_2.term = L9_2
  L9_2 = math
  L9_2 = L9_2.min
  L10_2 = 100
  L11_2 = math
  L11_2 = L11_2.max
  L12_2 = 0
  L13_2 = L4_2
  L11_2, L12_2, L13_2 = L11_2(L12_2, L13_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  L8_2.downPaymentPercent = L9_2
  L9_2 = math
  L9_2 = L9_2.max
  L10_2 = 0
  L11_2 = L5_2
  L9_2 = L9_2(L10_2, L11_2)
  L8_2.interestRate = L9_2
  L9_2 = L6_2 or L9_2
  if not (L6_2 > 0) or not L6_2 then
    L9_2 = L1_2.interval
  end
  L8_2.interval = L9_2
  return L8_2
end
L0_1.ResolveTerms = L1_1
L0_1 = Mortgage
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = math
  L2_2 = L2_2.ceil
  L3_2 = A1_2.downPaymentPercent
  L3_2 = A0_2 * L3_2
  L3_2 = L3_2 / 100
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2 - L2_2
  if L3_2 <= 0 then
    L4_2 = nil
    return L4_2
  end
  L4_2 = math
  L4_2 = L4_2.ceil
  L5_2 = A1_2.interestRate
  L5_2 = L3_2 * L5_2
  L5_2 = L5_2 / 100
  L4_2 = L4_2(L5_2)
  L5_2 = L3_2 + L4_2
  L6_2 = math
  L6_2 = L6_2.ceil
  L7_2 = A1_2.term
  L7_2 = L5_2 / L7_2
  L6_2 = L6_2(L7_2)
  L7_2 = {}
  L7_2.balance = L5_2
  L7_2.installment = L6_2
  L8_2 = A1_2.term
  L7_2.installmentsTotal = L8_2
  L7_2.installmentsPaid = 0
  L8_2 = A1_2.interval
  L7_2.interval = L8_2
  L8_2 = os
  L8_2 = L8_2.time
  L8_2 = L8_2()
  L7_2.lastPaymentTime = L8_2
  L7_2.missed = 0
  L7_2.amountDue = 0
  L7_2.price = A0_2
  L7_2.downPayment = L2_2
  L8_2 = A1_2.interestRate
  L7_2.interestRate = L8_2
  L7_2.totalInterest = L4_2
  L8_2 = L2_2 + L5_2
  L7_2.totalCost = L8_2
  return L7_2
end
L0_1.Build = L1_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "table" ~= L1_2 then
    L1_2 = nil
    return L1_2
  end
  L1_2 = {}
  L2_2 = type
  L3_2 = A0_2.enabled
  L2_2 = L2_2(L3_2)
  if "boolean" == L2_2 then
    L2_2 = A0_2.enabled
    L1_2.enabled = L2_2
  end
  L2_2 = type
  L3_2 = A0_2.downPaymentPercent
  L2_2 = L2_2(L3_2)
  if "number" == L2_2 then
    L2_2 = A0_2.downPaymentPercent
    if L2_2 >= 0 then
      L2_2 = A0_2.downPaymentPercent
      if L2_2 <= 100 then
        L2_2 = A0_2.downPaymentPercent
        L1_2.downPaymentPercent = L2_2
      end
    end
  end
  L2_2 = type
  L3_2 = A0_2.term
  L2_2 = L2_2(L3_2)
  if "number" == L2_2 then
    L2_2 = A0_2.term
    if L2_2 >= 1 then
      L2_2 = math
      L2_2 = L2_2.floor
      L3_2 = A0_2.term
      L2_2 = L2_2(L3_2)
      L1_2.term = L2_2
    end
  end
  L2_2 = type
  L3_2 = A0_2.interval
  L2_2 = L2_2(L3_2)
  if "number" == L2_2 then
    L2_2 = A0_2.interval
    if L2_2 > 0 then
      L2_2 = math
      L2_2 = L2_2.floor
      L3_2 = A0_2.interval
      L2_2 = L2_2(L3_2)
      L1_2.interval = L2_2
    end
  end
  L2_2 = type
  L3_2 = A0_2.interestRate
  L2_2 = L2_2(L3_2)
  if "number" == L2_2 then
    L2_2 = A0_2.interestRate
    if L2_2 >= 0 then
      L2_2 = A0_2.interestRate
      L1_2.interestRate = L2_2
    end
  end
  L2_2 = next
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = nil
    return L2_2
  end
  return L1_2
end
NormalizeMortgageTerms = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2.installmentsTotal
  if not L1_2 then
    L1_2 = 0
  end
  L2_2 = A0_2.balance
  if not L2_2 then
    L2_2 = 0
  end
  if L2_2 <= 0 then
    return L1_2
  end
  L2_2 = A0_2.totalCost
  if not L2_2 then
    L2_2 = 0
  end
  L3_2 = A0_2.downPayment
  if not L3_2 then
    L3_2 = 0
  end
  L2_2 = L2_2 - L3_2
  L3_2 = A0_2.installment
  if not L3_2 then
    L3_2 = 0
  end
  if L2_2 <= 0 or L3_2 <= 0 then
    L4_2 = 0
    return L4_2
  end
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = A0_2.balance
  L5_2 = L2_2 - L5_2
  L5_2 = L5_2 / L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = math
  L5_2 = L5_2.max
  L6_2 = 0
  L7_2 = math
  L7_2 = L7_2.min
  L8_2 = L1_2
  L9_2 = L4_2
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
  return L5_2(L6_2, L7_2, L8_2, L9_2)
end
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = L1_2.mortgage
  end
  if L2_2 then
    L3_2 = L0_1
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L2_2.installmentsPaid = L3_2
  end
  L3_2 = TriggerClientEvent
  L4_2 = "tk_housing:updateMortgage"
  L5_2 = -1
  L6_2 = {}
  L6_2.propertyId = A0_2
  L6_2.mortgage = L2_2
  L7_2 = L1_2 or L7_2
  if L1_2 then
    L7_2 = L1_2.mortgageLocked
  end
  if not L7_2 then
    L7_2 = false
  end
  L6_2.locked = L7_2
  L3_2(L4_2, L5_2, L6_2)
end
L2_1 = Mortgage
L2_1.Sync = L1_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A1_2.mortgage = nil
  A1_2.mortgageLocked = nil
  L3_2 = PropertyDb
  L3_2 = L3_2.ClearMortgage
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = Main
  L3_2 = L3_2.ClearExportCache
  L4_2 = A0_2
  L3_2(L4_2)
  if A2_2 then
    L3_2 = Notify
    L4_2 = A2_2
    L5_2 = _U
    L6_2 = "mortgage_paid_off"
    L5_2 = L5_2(L6_2)
    L6_2 = "success"
    L3_2(L4_2, L5_2, L6_2)
  end
end
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = Config
  L2_2 = L2_2.Mortgage
  L2_2 = L2_2.onNonPayment
  if "repossess" == L2_2 then
    L2_2 = A1_2.name
    if not L2_2 then
      L2_2 = A1_2.address
    end
    L3_2 = Properties
    L3_2 = L3_2.RemovePropertyOwner
    L4_2 = A0_2
    L3_2(L4_2)
    L3_2 = Webhook
    L4_2 = _U
    L5_2 = "webhook_action"
    L6_2 = "Server"
    L7_2 = "Property Repossessed - Missed Mortgage"
    L8_2 = json
    L8_2 = L8_2.encode
    L9_2 = {}
    L9_2.propertyId = A0_2
    L9_2.name = L2_2
    L10_2 = {}
    L10_2.indent = true
    L8_2, L9_2, L10_2 = L8_2(L9_2, L10_2)
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    L3_2 = true
    return L3_2
  end
  L2_2 = A1_2.mortgageLocked
  if not L2_2 then
    A1_2.mortgageLocked = true
    L2_2 = true
    return L2_2
  end
  L2_2 = false
  return L2_2
end
L4_1 = Mortgage
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = L1_2.mortgage
  end
  if L1_2 then
    L3_2 = L1_2.owner
    if L3_2 and L2_2 then
      L3_2 = L1_2.owner
      L4_2 = GetPlayerFromIdentifier
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      L5_2 = math
      L5_2 = L5_2.floor
      L6_2 = L2_2.interval
      L6_2 = L6_2 / 1000
      L5_2 = L5_2(L6_2)
      L6_2 = L2_2.lastPaymentTime
      if L6_2 then
        L6_2 = os
        L6_2 = L6_2.time
        L6_2 = L6_2()
        L7_2 = L2_2.lastPaymentTime
        L6_2 = L6_2 - L7_2
        if L6_2 then
          goto lbl_37
        end
      end
      L6_2 = L5_2
      ::lbl_37::
      L7_2 = false
      L8_2 = false
      if not (L6_2 < 0) then
        if not (L5_2 > 0) then
          goto lbl_57
        end
        L9_2 = L5_2 * 10
        if not (L6_2 > L9_2) then
          goto lbl_57
        end
      end
      L9_2 = os
      L9_2 = L9_2.time
      L9_2 = L9_2()
      L2_2.lastPaymentTime = L9_2
      L9_2 = PropertyDb
      L9_2 = L9_2.UpdateMortgage
      L10_2 = A0_2
      L11_2 = L2_2
      L9_2(L10_2, L11_2)
      goto lbl_209
      ::lbl_57::
      if L5_2 > 0 and L5_2 <= L6_2 then
        L9_2 = Config
        L9_2 = L9_2.Mortgage
        L9_2 = L9_2.paymentMode
        if "manual" ~= L9_2 then
          L9_2 = Utils
          L9_2 = L9_2.IsEntityOwner
          L10_2 = L3_2
          L9_2 = L9_2(L10_2)
          if not L9_2 then
            goto lbl_116
          end
        end
        L9_2 = math
        L9_2 = L9_2.min
        L10_2 = L2_2.installment
        L11_2 = L2_2.balance
        L12_2 = L2_2.amountDue
        L11_2 = L11_2 - L12_2
        L9_2 = L9_2(L10_2, L11_2)
        if L9_2 > 0 then
          L10_2 = L2_2.amountDue
          L10_2 = L10_2 + L9_2
          L2_2.amountDue = L10_2
        end
        L10_2 = L2_2.missed
        L10_2 = L10_2 + 1
        L2_2.missed = L10_2
        L10_2 = os
        L10_2 = L10_2.time
        L10_2 = L10_2()
        L2_2.lastPaymentTime = L10_2
        L7_2 = true
        if L4_2 then
          L10_2 = Notify
          L11_2 = GetSource
          L12_2 = L4_2
          L11_2 = L11_2(L12_2)
          L12_2 = _U
          L13_2 = "mortgage_installment_due"
          L14_2 = Utils
          L14_2 = L14_2.GroupDigits
          L15_2 = L2_2.amountDue
          L14_2, L15_2, L16_2 = L14_2(L15_2)
          L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
          L13_2 = "inform"
          L10_2(L11_2, L12_2, L13_2)
        end
        L10_2 = PropertyDb
        L10_2 = L10_2.UpdateMortgage
        L11_2 = A0_2
        L12_2 = L2_2
        L10_2(L11_2, L12_2)
        goto lbl_209
        ::lbl_116::
        L9_2 = math
        L9_2 = L9_2.min
        L10_2 = L2_2.installment
        L11_2 = L2_2.balance
        L9_2 = L9_2(L10_2, L11_2)
        L10_2 = PayBill
        L11_2 = L3_2
        L12_2 = L9_2
        L10_2 = L10_2(L11_2, L12_2)
        if L10_2 then
          L10_2 = L2_2.balance
          L10_2 = L10_2 - L9_2
          L2_2.balance = L10_2
          L10_2 = L0_1
          L11_2 = L2_2
          L10_2 = L10_2(L11_2)
          L2_2.installmentsPaid = L10_2
          L2_2.missed = 0
          L10_2 = os
          L10_2 = L10_2.time
          L10_2 = L10_2()
          L2_2.lastPaymentTime = L10_2
          L1_2.mortgageLocked = nil
          L10_2 = L2_2.balance
          if L10_2 <= 0 then
            L10_2 = L2_1
            L11_2 = A0_2
            L12_2 = L1_2
            L13_2 = L4_2 or L13_2
            if L4_2 then
              L13_2 = GetSource
              L14_2 = L4_2
              L13_2 = L13_2(L14_2)
            end
            L10_2(L11_2, L12_2, L13_2)
            L8_2 = true
          else
            if L4_2 then
              L10_2 = Notify
              L11_2 = GetSource
              L12_2 = L4_2
              L11_2 = L11_2(L12_2)
              L12_2 = _U
              L13_2 = "mortgage_payment_taken"
              L14_2 = Utils
              L14_2 = L14_2.GroupDigits
              L15_2 = L9_2
              L14_2 = L14_2(L15_2)
              L15_2 = Utils
              L15_2 = L15_2.GroupDigits
              L16_2 = L2_2.balance
              L15_2, L16_2 = L15_2(L16_2)
              L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
              L13_2 = "inform"
              L10_2(L11_2, L12_2, L13_2)
            end
            L10_2 = PropertyDb
            L10_2 = L10_2.UpdateMortgage
            L11_2 = A0_2
            L12_2 = L2_2
            L10_2(L11_2, L12_2)
          end
        else
          L10_2 = L2_2.missed
          L10_2 = L10_2 + 1
          L2_2.missed = L10_2
          L10_2 = os
          L10_2 = L10_2.time
          L10_2 = L10_2()
          L2_2.lastPaymentTime = L10_2
          L10_2 = PropertyDb
          L10_2 = L10_2.UpdateMortgage
          L11_2 = A0_2
          L12_2 = L2_2
          L10_2(L11_2, L12_2)
          if L4_2 then
            L10_2 = Notify
            L11_2 = GetSource
            L12_2 = L4_2
            L11_2 = L11_2(L12_2)
            L12_2 = _U
            L13_2 = "mortgage_grace_warning"
            L14_2 = L2_2.missed
            L15_2 = Config
            L15_2 = L15_2.Mortgage
            L15_2 = L15_2.gracePeriod
            L12_2 = L12_2(L13_2, L14_2, L15_2)
            L13_2 = "error"
            L10_2(L11_2, L12_2, L13_2)
          end
        end
        L7_2 = true
      end
      ::lbl_209::
      if not L8_2 then
        L9_2 = L2_2.missed
        L10_2 = Config
        L10_2 = L10_2.Mortgage
        L10_2 = L10_2.gracePeriod
        if L9_2 >= L10_2 then
          L9_2 = L1_2.name
          if not L9_2 then
            L9_2 = L1_2.address
          end
          L10_2 = L3_1
          L11_2 = A0_2
          L12_2 = L1_2
          L10_2 = L10_2(L11_2, L12_2)
          if L10_2 then
            L10_2 = Config
            L10_2 = L10_2.Mortgage
            L10_2 = L10_2.onNonPayment
            if "repossess" == L10_2 then
              L8_2 = true
              if L4_2 then
                L10_2 = Notify
                L11_2 = GetSource
                L12_2 = L4_2
                L11_2 = L11_2(L12_2)
                L12_2 = _U
                L13_2 = "mortgage_repossessed"
                L12_2 = L12_2(L13_2)
                L13_2 = "error"
                L10_2(L11_2, L12_2, L13_2)
              else
                L10_2 = Utils
                L10_2 = L10_2.IsEntityOwner
                L11_2 = L3_2
                L10_2 = L10_2(L11_2)
                if not L10_2 then
                  L10_2 = Properties
                  L10_2 = L10_2.SaveLostProperty
                  L11_2 = L3_2
                  L12_2 = "mortgage"
                  L13_2 = L9_2
                  L10_2(L11_2, L12_2, L13_2)
                end
              end
            else
              L10_2 = PropertyDb
              L10_2 = L10_2.UpdateMortgage
              L11_2 = A0_2
              L12_2 = L2_2
              L10_2(L11_2, L12_2)
              if L4_2 then
                L10_2 = Notify
                L11_2 = GetSource
                L12_2 = L4_2
                L11_2 = L11_2(L12_2)
                L12_2 = _U
                L13_2 = "mortgage_locked"
                L12_2 = L12_2(L13_2)
                L13_2 = "error"
                L10_2(L11_2, L12_2, L13_2)
              end
            end
            L7_2 = true
          end
        end
      end
      if L7_2 or L8_2 then
        L9_2 = Main
        L9_2 = L9_2.ClearExportCache
        L10_2 = A0_2
        L9_2(L10_2)
        L9_2 = L1_1
        L10_2 = A0_2
        L9_2(L10_2)
      end
    end
  end
end
L4_1.ChargeInstallment = L5_1
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = math
  L0_2 = L0_2.min
  L1_2 = Config
  L1_2 = L1_2.Mortgage
  L1_2 = L1_2.interval
  L2_2 = 3600000
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    while true do
      L0_3 = {}
      L1_3 = pairs
      L2_3 = Main
      L2_3 = L2_3.GetProperties
      L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3 = L2_3()
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = L6_3.owner
        if L7_3 then
          L7_3 = L6_3.mortgage
          if L7_3 then
            L7_3 = #L0_3
            L7_3 = L7_3 + 1
            L0_3[L7_3] = L5_3
          end
        end
      end
      L1_3 = ipairs
      L2_3 = L0_3
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = Mortgage
        L7_3 = L7_3.ChargeInstallment
        L8_3 = L6_3
        L7_3(L8_3)
      end
      L1_3 = Wait
      L2_3 = L0_2
      L1_3(L2_3)
    end
  end
  L1_2(L2_2)
end
L5_1 = Mortgage
function L6_1()
  local L0_2, L1_2
  L0_2 = Config
  L0_2 = L0_2.Mortgage
  L0_2 = L0_2.enabled
  if not L0_2 then
    return
  end
  L0_2 = L4_1
  L0_2()
end
L5_1.StartLoop = L6_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "number" ~= L1_2 or A0_2 <= 0 then
    L1_2 = ""
    return L1_2
  end
  L1_2 = math
  L1_2 = L1_2.max
  L2_2 = 1
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = A0_2 / 86400000
  L3_2, L4_2 = L3_2(L4_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if 1 == L1_2 then
    L2_2 = _U
    L3_2 = "interval_day"
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_30
    end
  end
  L2_2 = _U
  L3_2 = "interval_days"
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  ::lbl_30::
  return L2_2
end
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2.totalCost
  L2_2 = A0_2.downPayment
  L1_2 = L1_2 - L2_2
  if L1_2 <= 0 then
    L2_2 = A0_2.balance
    return L2_2
  end
  L2_2 = A0_2.balance
  L3_2 = A0_2.totalInterest
  L3_2 = L3_2 / L1_2
  L2_2 = L2_2 * L3_2
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = 0
  L5_2 = math
  L5_2 = L5_2.min
  L6_2 = 100
  L7_2 = Config
  L7_2 = L7_2.Mortgage
  L7_2 = L7_2.earlyPayoffInterestWaiver
  if not L7_2 then
    L7_2 = 0
  end
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = math
  L4_2 = L4_2.ceil
  L5_2 = A0_2.balance
  L6_2 = L2_2 * L3_2
  L6_2 = L6_2 / 100
  L5_2 = L5_2 - L6_2
  return L4_2(L5_2)
end
L7_1 = Mortgage
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = Main
  L1_2 = L1_2.GetProperty
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = L1_2.mortgage
  end
  if not L2_2 then
    L3_2 = nil
    return L3_2
  end
  L3_2 = L2_2.totalCost
  L4_2 = L2_2.balance
  L3_2 = L3_2 - L4_2
  L4_2 = L2_2.totalCost
  if L4_2 > 0 then
    L4_2 = math
    L4_2 = L4_2.floor
    L5_2 = L2_2.totalCost
    L5_2 = L3_2 / L5_2
    L5_2 = L5_2 * 100
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_30
    end
  end
  L4_2 = 0
  ::lbl_30::
  L5_2 = L6_1
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L6_2 = Config
  L6_2 = L6_2.Mortgage
  L6_2 = L6_2.paymentMode
  L6_2 = Config
  L6_2 = L6_2.Mortgage
  L6_2 = L6_2.allowManualPayment
  L6_2 = Utils
  L6_2 = L6_2.IsEntityOwner
  L7_2 = L1_2.owner
  L6_2 = "manual" == L6_2 or L6_2
  L7_2 = {}
  L8_2 = L2_2.balance
  L7_2.balance = L8_2
  L8_2 = L2_2.totalCost
  L7_2.totalCost = L8_2
  L8_2 = L2_2.downPayment
  L7_2.downPayment = L8_2
  L8_2 = L2_2.price
  L7_2.price = L8_2
  L8_2 = L2_2.interestRate
  L7_2.interestRate = L8_2
  L8_2 = L2_2.totalInterest
  L7_2.totalInterest = L8_2
  L8_2 = L2_2.installment
  L7_2.installment = L8_2
  L8_2 = L0_1
  L9_2 = L2_2
  L8_2 = L8_2(L9_2)
  L7_2.installmentsPaid = L8_2
  L8_2 = L2_2.installmentsTotal
  L7_2.installmentsTotal = L8_2
  L8_2 = L2_2.amountDue
  if not L8_2 then
    L8_2 = 0
  end
  L7_2.amountDue = L8_2
  L8_2 = L2_2.missed
  if not L8_2 then
    L8_2 = 0
  end
  L7_2.missed = L8_2
  L8_2 = Config
  L8_2 = L8_2.Mortgage
  L8_2 = L8_2.gracePeriod
  L7_2.gracePeriod = L8_2
  L8_2 = L2_2.lastPaymentTime
  if not L8_2 then
    L8_2 = os
    L8_2 = L8_2.time
    L8_2 = L8_2()
  end
  L9_2 = math
  L9_2 = L9_2.floor
  L10_2 = L2_2.interval
  L10_2 = L10_2 / 1000
  L9_2 = L9_2(L10_2)
  L8_2 = L8_2 + L9_2
  L7_2.nextDueTime = L8_2
  L8_2 = L2_2.lastPaymentTime
  L7_2.lastPaymentTime = L8_2
  L8_2 = L2_2.interval
  L7_2.interval = L8_2
  L8_2 = L5_1
  L9_2 = L2_2.interval
  L8_2 = L8_2(L9_2)
  L7_2.intervalLabel = L8_2
  L8_2 = Config
  L8_2 = L8_2.Mortgage
  L8_2 = L8_2.paymentMode
  L7_2.paymentMode = L8_2
  L8_2 = Config
  L8_2 = L8_2.Mortgage
  L8_2 = L8_2.onNonPayment
  L7_2.onNonPayment = L8_2
  L7_2.canPay = L6_2
  L8_2 = L1_2.mortgageLocked
  if not L8_2 then
    L8_2 = false
  end
  L7_2.locked = L8_2
  L7_2.paidToDate = L3_2
  L7_2.progressPercent = L4_2
  L7_2.payoffAmount = L5_2
  L8_2 = L2_2.balance
  L8_2 = L8_2 - L5_2
  L7_2.payoffSavings = L8_2
  return L7_2
end
L7_1.GetInfo = L8_1
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L3_2 = Main
  L3_2 = L3_2.GetProperty
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = GetPlayerFromId
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L5_2 = Permissions
    L5_2 = L5_2.IsOwnerOrManager
    L6_2 = L4_2
    L7_2 = A1_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      goto lbl_23
    end
  end
  L5_2 = false
  do return L5_2 end
  ::lbl_23::
  L5_2 = L3_2.mortgage
  if not L5_2 then
    L6_2 = false
    return L6_2
  end
  L6_2 = L3_2.owner
  L7_2 = Utils
  L7_2 = L7_2.IsEntityOwner
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  L8_2 = Config
  L8_2 = L8_2.Mortgage
  L8_2 = L8_2.paymentMode
  if "manual" ~= L8_2 then
    L8_2 = Config
    L8_2 = L8_2.Mortgage
    L8_2 = L8_2.allowManualPayment
    if not L8_2 and not L7_2 then
      L8_2 = false
      return L8_2
    end
  end
  L8_2 = nil
  if "due" == A2_2 then
    L9_2 = L5_2.amountDue
    L8_2 = L9_2 or L8_2
    if not L9_2 then
      L8_2 = 0
    end
    if L8_2 <= 0 then
      L9_2 = false
      return L9_2
    end
  elseif "ahead" == A2_2 then
    L9_2 = math
    L9_2 = L9_2.min
    L10_2 = L5_2.installment
    L11_2 = L5_2.balance
    L9_2 = L9_2(L10_2, L11_2)
    L8_2 = L9_2
    if L8_2 <= 0 then
      L9_2 = false
      return L9_2
    end
  elseif "payoff" == A2_2 then
    L9_2 = L6_1
    L10_2 = L5_2
    L9_2 = L9_2(L10_2)
    L8_2 = L9_2
    if L8_2 <= 0 then
      L9_2 = false
      return L9_2
    end
  else
    L9_2 = false
    return L9_2
  end
  if L7_2 then
    L9_2 = GetIdentifier
    L10_2 = L4_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      goto lbl_93
    end
  end
  L9_2 = L6_2
  ::lbl_93::
  L10_2 = L5_2.amountDue
  if not L10_2 then
    L10_2 = 0
  end
  L11_2 = L5_2.balance
  L12_2 = PayBill
  L13_2 = L9_2
  L14_2 = L8_2
  L12_2 = L12_2(L13_2, L14_2)
  if not L12_2 then
    L12_2 = Notify
    L13_2 = A0_2
    L14_2 = _U
    L15_2 = "mortgage_cannot_afford"
    L14_2 = L14_2(L15_2)
    L15_2 = "error"
    L12_2(L13_2, L14_2, L15_2)
    L12_2 = false
    return L12_2
  end
  L12_2 = L3_2.mortgage
  if L12_2 == L5_2 then
    L12_2 = L5_2.amountDue
    if not L12_2 then
      L12_2 = 0
    end
    if L12_2 == L10_2 then
      L12_2 = L5_2.balance
      if L12_2 == L11_2 then
        goto lbl_134
      end
    end
  end
  L12_2 = Utils
  L12_2 = L12_2.Warn
  L13_2 = "Player was charged for a mortgage payment but it could not be applied because the mortgage changed mid-payment"
  L14_2 = A1_2
  L15_2 = A0_2
  L16_2 = L8_2
  L12_2(L13_2, L14_2, L15_2, L16_2)
  L12_2 = false
  do return L12_2 end
  ::lbl_134::
  if "payoff" == A2_2 then
    L12_2 = L2_1
    L13_2 = A1_2
    L14_2 = L3_2
    L15_2 = A0_2
    L12_2(L13_2, L14_2, L15_2)
    L12_2 = Main
    L12_2 = L12_2.ClearExportCache
    L13_2 = A1_2
    L12_2(L13_2)
    L12_2 = L1_1
    L13_2 = A1_2
    L12_2(L13_2)
    L12_2 = true
    return L12_2
  end
  if "due" == A2_2 then
    L12_2 = math
    L12_2 = L12_2.max
    L13_2 = 0
    L14_2 = L5_2.balance
    L14_2 = L14_2 - L8_2
    L12_2 = L12_2(L13_2, L14_2)
    L5_2.balance = L12_2
    L12_2 = L0_1
    L13_2 = L5_2
    L12_2 = L12_2(L13_2)
    L5_2.installmentsPaid = L12_2
    L5_2.amountDue = 0
    L5_2.missed = 0
    L3_2.mortgageLocked = nil
  else
    L12_2 = math
    L12_2 = L12_2.max
    L13_2 = 0
    L14_2 = L5_2.balance
    L14_2 = L14_2 - L8_2
    L12_2 = L12_2(L13_2, L14_2)
    L5_2.balance = L12_2
    L12_2 = L0_1
    L13_2 = L5_2
    L12_2 = L12_2(L13_2)
    L5_2.installmentsPaid = L12_2
  end
  L12_2 = math
  L12_2 = L12_2.min
  L13_2 = L5_2.amountDue
  L14_2 = L5_2.balance
  L12_2 = L12_2(L13_2, L14_2)
  L5_2.amountDue = L12_2
  L12_2 = L5_2.balance
  if L12_2 <= 0 then
    L12_2 = L2_1
    L13_2 = A1_2
    L14_2 = L3_2
    L15_2 = A0_2
    L12_2(L13_2, L14_2, L15_2)
  else
    L12_2 = PropertyDb
    L12_2 = L12_2.UpdateMortgage
    L13_2 = A1_2
    L14_2 = L5_2
    L12_2(L13_2, L14_2)
    L12_2 = Notify
    L13_2 = A0_2
    L14_2 = _U
    L15_2 = "mortgage_payment_taken"
    L16_2 = Utils
    L16_2 = L16_2.GroupDigits
    L17_2 = L8_2
    L16_2 = L16_2(L17_2)
    L17_2 = Utils
    L17_2 = L17_2.GroupDigits
    L18_2 = math
    L18_2 = L18_2.max
    L19_2 = 0
    L20_2 = L5_2.balance
    L18_2, L19_2, L20_2 = L18_2(L19_2, L20_2)
    L17_2, L18_2, L19_2, L20_2 = L17_2(L18_2, L19_2, L20_2)
    L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    L15_2 = "success"
    L12_2(L13_2, L14_2, L15_2)
  end
  L12_2 = Main
  L12_2 = L12_2.ClearExportCache
  L13_2 = A1_2
  L12_2(L13_2)
  L12_2 = L1_1
  L13_2 = A1_2
  L12_2(L13_2)
  L12_2 = true
  return L12_2
end
L8_1 = {}
L9_1 = Mortgage
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = L8_1
  L3_2 = L3_2[A1_2]
  if L3_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = L8_1
  L3_2[A1_2] = true
  L3_2 = pcall
  L4_2 = L7_1
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2, L4_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L5_2 = L8_1
  L5_2[A1_2] = nil
  if not L3_2 then
    L5_2 = Utils
    L5_2 = L5_2.Warn
    L6_2 = "Paying a mortgage failed"
    L7_2 = A1_2
    L8_2 = A0_2
    L9_2 = L4_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2 = false
    return L5_2
  end
  return L4_2
end
L9_1.MakePayment = L10_1
L9_1 = RegisterCallback
L10_1 = "tk_housing:getMortgage"
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = type
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  if "number" == L3_2 then
    L3_2 = Main
    L3_2 = L3_2.GetProperty
    L4_2 = A2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      goto lbl_17
    end
  end
  L3_2 = A1_2
  L4_2 = {}
  L3_2(L4_2)
  do return end
  ::lbl_17::
  L3_2 = GetPlayerFromId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = Permissions
    L4_2 = L4_2.IsOwnerOrManager
    L5_2 = L3_2
    L6_2 = A2_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 then
      goto lbl_34
    end
  end
  L4_2 = A1_2
  L5_2 = {}
  L4_2(L5_2)
  do return end
  ::lbl_34::
  L4_2 = A1_2
  L5_2 = Mortgage
  L5_2 = L5_2.GetInfo
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = {}
  end
  L4_2(L5_2)
end
L9_1(L10_1, L11_1)
L9_1 = RegisterNetEvent
L10_1 = "tk_housing:payMortgage"
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" == L2_2 then
    L2_2 = A0_2.propertyId
    if L2_2 then
      goto lbl_11
    end
  end
  L2_2 = A0_2
  ::lbl_11::
  L3_2 = type
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if "table" == L3_2 then
    L3_2 = A0_2.kind
    if L3_2 then
      goto lbl_20
    end
  end
  L3_2 = "due"
  ::lbl_20::
  L4_2 = type
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  if "number" == L4_2 then
    L4_2 = Main
    L4_2 = L4_2.GetProperty
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      goto lbl_32
    end
  end
  do return end
  ::lbl_32::
  if "due" ~= L3_2 and "ahead" ~= L3_2 and "payoff" ~= L3_2 then
    return
  end
  L4_2 = GetPlayerFromId
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L5_2 = Permissions
  L5_2 = L5_2.IsOwnerOrManager
  L6_2 = L4_2
  L7_2 = L2_2
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    L5_2 = Permissions
    L5_2 = L5_2.DenyCheater
    L6_2 = L1_2
    L7_2 = L4_2
    L8_2 = "payMortgage"
    L5_2(L6_2, L7_2, L8_2)
    return
  end
  L5_2 = Mortgage
  L5_2 = L5_2.MakePayment
  L6_2 = L1_2
  L7_2 = L2_2
  L8_2 = L3_2
  L5_2(L6_2, L7_2, L8_2)
end
L9_1(L10_1, L11_1)
