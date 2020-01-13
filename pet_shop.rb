def pet_shop_name(pet_shop)
  return pet_shop[:name]
end


def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end


def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += amount
  # pet_shop[:admin][:total_cash] = pet_shop[:admin][:total_cash]  + amount
  # return pet_shop[:admin][:total_cash] -= amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, amount)
  return pet_shop[:admin][:pets_sold] += amount
end

def stock_count(pet_shop)
  return pet_shop[:pets].count
end

def pets_by_breed(pet_shop, type)

  count = []

  for pet in pet_shop[:pets]
    if pet[:breed] == type
      count.push(pet)
    end
  end
  return count
end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

# def remove_pet_by_name(pet_shop, name)
#     for pet in pet_shop[:pets]
#       if pet == name
#         pet_shop[:pets][:name].delete
#       end
#     end
#   end

def customer_cash(customers)
  return customers[0][:cash]
end
