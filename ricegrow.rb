# Utility Functions

def reset_color
  print "\033[0m"
end

def set_color_black
  print "\033[30m"
end

def set_color_red
  print "\033[31m" 
end

def set_color_green
  print "\033[32m" 
end

def set_color_blue
  print "\033[34m"
end

def get_number(num)         # Flag: -1=same;  0=else
  @same_flag = true         # Initialize reply to "same"
  while true
    response = gets.chomp.strip
    return num if response.upcase == "SAME"
    if response.include? ","
      puts "Please retype the number without commas."
    elsif response.include? " "
      puts "Please retype the number without spaces."
    elsif (Float(response) rescue nil).nil?
      puts "Please type a number."
    else
      @same_flag = false
      return response.to_f
    end
  end
end

def get_response(valid_responses, value)         
  @same_flag = true         
  while true
    response = gets.chomp.strip.upcase
    return value if response == "SAME" && value != ""
    if !valid_responses.split(",").include? response
      puts "That is not a legal response. Please retype."
    elsif response == "SAME" && value == ""
      puts "You cannot use the same value."
    else
      @same_flag = false
      return response
    end
  end
end

def yes_no
  while true
    response = gets.chomp.upcase
    if response == "YES" or response == "Y"
      return "YES"
    elsif response == "NO" or response == "N"
      return "NO"
       #elseif test$="STOP" then
       #   STOP
    else
      puts "Please answer YES or NO."
    end
  end 
end

def wait
  puts
  set_color_red
  puts "Press Enter to continue..."
  reset_color
  gets
end

def introduce_simulation
    puts
    puts
    puts "Welcome to the real world!  YOU ARE TO PLAY THE ROLE OF A"
    puts "   SMALL-TIME RICE FARMER IN THE PHILIPPINES.  YOU HAVE"
    puts "   CONTROL OVER MOST OF THE FACTORS WHICH INFLUENCE YOUR"
    puts "   OUTPUT.  THE IDEA IS TO RAISE SEVERAL SUCCESSIVE CROPS,"
    puts "   ALWAYS TRYING TO INCREASE YOUR RETURNS TO LABOR AND"
    puts "   CAPITAL. A FAILURE FOR A SINGLE YEAR MAY MEAN A MAJOR"
    puts "   CRISIS FOR YOU AND FOR THE FAMILY.  GOOD LUCK!!!"
    puts
    puts
    puts "YOU ARE A NEW OWNER AS A RESULT OF LAND REFORM."
    puts "YOUR LAND IS IRRIGATED."
    puts "YOUR HEADMAN WOULD LIKE YOU TO RAISE 'IR64' WHICH IS SAID TO"
    puts "ACHIEVE VERY HIGH YIELDS, BUT YOU ARE FAMILIAR WITH 'LOCAL' RICE"
    puts "AND HESITATE TO EXPERIMENT WITH NEW KINDS OF SEEDS."
    wait
    puts
    puts
    puts "    FIRST, A FEW TERMS YOU SHOULD KNOW:"
    puts "      HECTARE (HA.) = 10,000 SQ. METERS (2.47 ACRES)"
    puts "      KILOGRAM (KG.) = 2.2 POUNDS"
    puts "      PESO = U.S. $0.023 ($1 = 44 PESOS)"
    puts "      CAVAN = VOLUME MEASURE - ROUGHLY 50 KG. OF PALAY"
    puts "      PALAY = THE TERM FOR THRESHED BUT UNHUSKED RICE"
    puts "      IR64 = A HIGH YIELDING RICE VARIETY FIRST RELEASED IN 1985"
    puts "      LODGING = PLANT FALLS OVER FROM TOO WEAK STEM."
    wait
    puts
    puts
end

def introduce_factors
    puts "Factors you can control include (among others) the following 10:"
    puts
    puts "     1. SIZE OF FARM (IN HECTARES)."
    puts "  THE MEAN FARM SIZE IN CENTRAL LUZON IS ABOUT 1.8 HA. BUT"
    puts "  SOME FARMS ARE A FRACTION OF A HA. WHILE OTHERS ARE AS"
    puts "  LARGE AS 50 HECTARES."
    puts
    puts "     2. COSTS OF OUTSIDE LABOR (IN PESOS/DAY)."
    puts "  LABOR COSTS PER DAY FOR FARM WORK (1998) VARY FROM PESOS"
    puts "  105 TO PESOS 125 DEPENDING ON LOCATION AND SEASON. SOME"
    puts "  SMALL SNACK FOODS ARE NORMALLY ADDED TO THIS COST."
    puts
    puts "     3. TYPE OF RICE (SEED) USED."
    puts "  IR64 HAS GREAT POTENTIAL, BUT MOST FARMERS ARE FAMILIAR"
    puts "  WITH LOCAL VARIETIES."
    wait
    puts
    puts "     4. COST OF SEED."
    puts "  SEEDS ARE USED AT THE RATE OF 1 CAVAN PER HA. OF FARM."
    puts "  ORDINARY HYV SEED COSTS 570 - 630 PESOS PER CAVAN."
    puts "  GOVERNMENT INSPECTED SEED OF VERY GOOD QUALITY SELLS AT "
    puts "  ABOUT 675 PESOS. SOMETIMES A FARMER WITH SURPLUS RICE"
    puts "  WILL OFFER A 'DEAL' - SEED FOR much LOWER COST. SOME"
    puts "  SHARP BUSINESS TYPES MAY OFFER 'SELECTED' SEED FOR AS"
    puts "  MUCH AS 700 - 750 PESOS."
    puts
    puts "  LET'S ASSUME THAT OUR FARMER USES A VERY EFFICIENT SEED"
    puts "  RATE OF ONE CAVAN PER HECTARE!"
    wait
    puts
    puts "     5. USE OF SYSTEMIC PESTICIDE, I.P.M., OR NOTHING."
    puts "  I.P.M. (OR INTEGRATED PEST MANAGEMENT) INVOLVES CAREFUL"
    puts "  CULTIVATION TECHNIQUES, THE ENCOURAGEMENT OF RICE PEST PREDATORS,"
    puts "  AND CONSTANT MONITORING OF PEST INFESTATIONS. if THESE EXCEED"
    puts "  ACCEPTABLE LEVELS  A LIMITED SPRAY PROGRAM IS UNDERTAKEN."
    puts "    SYSTEMIC PESTICIDES ARE DESIGNED TO RID YOUR FIELDS OF"
    puts "  INSECTS. THIS OFTEN INCLUDES PEST PREDATORS AS WELL AS STEM-"
    puts "  BORERS, ARMY WORMS AND LEAF HOPPERS."
    puts "    SYSTEMICS ARE APPLIED AT TRANSPLANTING. (THIS IS WELL BEFORE"
    puts "  ANY INSECT ATTACK WILL BE OBSERVED). SYSTEMICS ARE COSTLY"
    puts "  BUT EFFECTIVE IN CUTTING LOSS FROM MANY INSECTS. MOST"
    puts "  FARMERS GAMBLE ON A LIGHT ATTACK AND DON'T USE SYSTEMICS."
    wait
    puts
    puts "     6. COST AND AMOUNT OF NITROGEN FERTILIZER."
    puts "  UREA IS THE CHEAPEST FORM OF NITROGEN. BY WEIGHT IT HAS"
    puts "  45 PERCENT N. A BAG OF UREA WEIGHS 50 KG.; AND COSTS BETWEEN"
    puts "  PESOS 350 - 370 (1998)."
    puts
    puts "     7. METHOD OF CROPLAND PREPARATION."
    puts "  USE OF THE CARABAO IS TRADITIONAL, BUT MANY FARMERS TODAY"
    puts "  ARE HAVING THEIR FIELDS CUSTOM PLOWED BY SMALL TRACTOR."
    puts "  ADVANTAGES OF THIS ARE SPEED AND BETTER WEED CONTROL."
    puts
    puts "     8. METHOD OF WEEDING AND HERBICIDE APPLICATIONS."
    puts "  WEEDING TOO HAS TRADITIONALLY BEEN DONE BY HAND."
    puts "  THE USE OF HERBICIDES IS A RECENT INNOVATION."
    wait
    puts
    puts "     9. METHOD OF THRESHING."
    puts "  WITH INCREASED YIELDS MANY FARMERS ARE HIRING CUSTOM MACHINE"
    puts "  THRESHING RATHER THAN STICKING WITH THE OLD HAND METHOD."
    puts
    puts "     10. MARKET VALUE OF ROUGH RICE."
    puts "  VARIES WITH VARIETY, QUALITY AND SEASON. AVERAGES (1994)"
    puts "  ABOUT 312 PESOS PER CAVAN (6.25 PESOS PER KG.)"
    puts "  MILLING RATE IS ROUGHLY 64% (50 KG. OF PALAY YIELDS"
    puts "  32 KG. OF RICE).  RETAIL PRICE OF RICE AVERAGED"
    puts "  (1994) 10.75 PESOS PER KG."
    wait
    puts
    puts
    puts
end

# Initialize Data

FACTORS = [
  :seeds,
  :fertilizer,
  :seedbed_prep,
  :land_prep,
  :weeding,
  :transplanting,
  :early_pest_control,
  :insecticide,
  :harvesting,
  :threshing,
  :hauling,
  :irrigation,
  :land_tax,
  :rodenticide,
  :molluscicide,
  :bird_repelling
]

WEEDING_EFFECTS = {
  "0" => [0.75, 0, 0],
  "1" => [1.00, 86, 0],
  "2" => [1.05, 60, 0],
  "3" => [1.15, 8, 95],
  "11" => [1.15, 144, 0],
  "12" => [1.15, 146, 0],
  "13" => [1.20, 83, 95],
  "21" => [1.15, 165, 0],
  "22" => [1.15, 125, 0],
  "23" => [1.20, 125, 95],
  "31" => [1.20, 83, 95],
  "32" => [1.20, 83, 95],
  "33" => [1.25, 16, 180]
}

VALID_WEEDING = WEEDING_EFFECTS.keys.join(",")

SEEDBED_PREP_HOURS = 24 # 4 days x 6 hours/day for seedbed preparation
TRACTOR_HOURS = 3       # Hours for tractor use in land preparation/ ha
CARABAO_HOURS = 72      # Hours for carabao use in land preparation/ ha
                        # a carabao works a six hour day
TRACTOR_RATE = 45       # Standard hourly rate for tractor and driver '98
CARABAO_RATE = 25       # Standard hourly rate for carabao and driver '98

@snail_attacks = 0        #No snail attack yet

@costs = {
  irrigation: 945,   # Irrigation fees '98
  land_tax: 1015     # Land tax '98
}

@costs.default = 0.0

@hours = {
  transplanting: 18 * 8   # 18 person days for transplanting
}

@hours.default = 0.0

@labor = Hash.new(0.0)

@total_costs = Hash.new(0.0)

@run_count = 0

# Simulation methods

def change_factors(factor)
  puts
  case factor
  when 1
    set_farm_size
  when 2
    set_wages
  when 3
    set_seed_type
  when 4
    set_seed_cost
  when 5
    set_pesticide
  when 6
    set_fertilizer
  when 7
    set_land_prep
  when 8
    set_weeding
  when 9
    set_threshing
  when 10
    set_market_value
  end
end

def set_farm_size
  set_color_red
  puts "What is the size of your farm (IN HECTARES)"
  set_color_green
  @farm_size = get_number(@farm_size)
  reset_color
  puts "THAT'S PRETTY LARGE FOR A PEASANT IN LUZON." if !@same_flag and @farm_size >= 5 
end

def set_wages
  set_color_red
  puts "WHAT IS THE COST OF OUTSIDE LABOR IN PESOS PER DAY";
  set_color_green
  @wages = get_number(@wages)
  unless @same_flag
    reset_color
    puts
    puts "Those are terrible wages - you cheapskate!!!" if @wages <= 100 
    puts "Very high wages - I doubt you can afford them" if @wages > 139 
  end
end

def set_seed_type
  set_color_red
  puts "IS 'LOCAL' OR 'IR64' RICE TO BE PLANTED?";
  set_color_green
  @seed = get_response("LOCAL,IR64",@seed)
  reset_color
  if @seed == "LOCAL" 
    @seed_yield = 1920
    @urea_factor_1 = -2.6E-4
    @urea_factor_2 = 0.023
  else
    @seed_yield = 2250
    @urea_factor_1 = -1.5E-4
    @urea_factor_2 = 0.032
  end
end

def set_seed_cost
  @seed_defect_factor = 1
  set_color_red
  puts "WHAT IS THE COST OF SEED IN PESOS/HA.";
  set_color_green
  @costs[:seeds] = get_number(@costs[:seeds])
  reset_color
  unless @same_flag
    puts
    if @costs[:seeds] > 680
      puts "expensive seed - it may not be good - too old"
      @seed_defect_factor = 0.9 
    elsif @costs[:seeds] <= 560
      puts "cheap seed - why waste time with it - poor germination"
      @seed_defect_factor = 0.9 
    end
  end
end

def set_pesticide
  @costs[:early_pest_control] = 0
  @hours[:early_pest_control] = 0
  @pesticide_yield_factor = 1 # Multiplier for no systemic or ipm
  set_color_red                    
  puts "DO YOU WISH TO APPLY SYSTEMIC PESTICIDE? 'YES' OR 'NO'";
  set_color_green
  response = yes_no
  reset_color
  if response == "YES"
    @pesticide_yield_factor = 1.15        # Yield increase for systemics
    @costs[:early_pest_control] = 390     # cost of systemics
    @hours[:early_pest_control] = 1.5 * 8 # 1 1/2 days to apply systemic
    return
  end
  set_color_red
  puts "DO YOU WISH TO USE I.P.M.?";
  set_color_green
  response = yes_no
  reset_color
  if response == "YES"
    @pesticide_yield_factor = 1.15     # Yield increase ffrom ipm
    @costs[:early_pest_control] = 65   # cost(not spray) for ipm
    @hours[:early_pest_control] = 7*8  # 7 days labor for ipm
  end
end

def set_fertilizer
  puts "FOR NITROGEN FERTILIZER (UREA):"
  set_color_red
  puts "     1. WHAT IS YOUR RATE OF APPLICATION? (KG./HA.)";
  set_color_green
  @fert_appl_rate = get_number(@fert_appl_rate)
  return if @same_flag
  @urea_n_content = 0.45 * @fert_appl_rate  # Nitrogen content of urea
  if @fert_appl_rate == 0 
     calculate_fert_costs
     return
  end
  if @fert_appl_rate >= 400 
    puts "#{@fert_appl_rate} KG. OF UREA CONTAINS #{@urea_n_content} KG. OF NITROGEN."
    puts "YOUR CROP CAN NOT USE THAT MUCH.  YOU MAY CAUSE SOME"
    puts "DAMAGE TO THE ECOSYSTEMS IN NEARBY STREAMS.  AT THE"
    puts "VERY LEAST, YOU HAVE WASTED MANY PESOS."
    puts
  end
  while true
    set_color_red
    puts "     2. WHAT IS THE COST OF UREA (PESOS/KG.)";
    set_color_green
    @urea_cost = get_number(@urea_cost)
    reset_color
    if @same_flag
      calculate_fert_costs
      return
    end
    if @urea_cost <= 6.8
      puts "You can not buy it so CHEAPLY - PLEASE REPEAT"
      next
    elsif @urea_cost > 7.4
      puts "THAT IS EXPENSIVE FERTILIZER - PLEASE REPEAT."
      set_color_red
      puts "     2. WHAT IS THE COST OF UREA (PESOS/KG.)";
      set_color_green
      @urea_cost = get_number(@urea_cost)
      if @urea_cost <= 6.8
        puts "You can not buy it so CHEAPLY - PLEASE REPEAT"
        next
      end
      if @urea_cost > 7.4
        set_color_red
        puts "if YOU WANT TO BUY AT THAT PRICE ITS O.K. WITH ME."
        reset_color
      end
      break
    end
    break
  end
  calculate_fert_costs
end

def calculate_fert_costs
  @costs[:fertilizer] = @fert_appl_rate * @urea_cost
  @hours[:fertilizer] = (1.5 + @fert_appl_rate/50) * 8 # Hours of labor needed
end

def set_land_prep
  @costs[:seedbed_prep] = @hours[:seedbed_prep] = 
    @costs[:land_prep] = @hours[:land_prep] = 0
  set_color_red
  puts "do you plan to use 'CARABAO' (WATER BUFFALO) or 'TRACTOR'"
  puts "for cropland preparation"
  puts
  set_color_green
  @prep_method = get_response("CARABAO,TRACTOR", @prep_method)
  reset_color
  return if @same_flag
  if @prep_method == "CARABAO"
    set_color_red
    puts "do you 'OWN' or will you 'HIRE' the carabao";
    set_color_green
    @own_or_hire = ""                 # Make sure no 'same' responses occur
    @own_or_hire = get_response("OWN,HIRE", @own_or_hire)
    reset_color
    if @own_or_hire == "HIRE"
      puts "THE CURRENT RATE FOR CARABAO PLUS HANDLER IS #{CARABAO_RATE} PESOS/"
      puts "HOUR."
      @costs[:seedbed_prep] = CARABAO_RATE * SEEDBED_PREP_HOURS
      @costs[:land_prep] = CARABAO_RATE * CARABAO_HOURS
    elsif @own_or_hire == "OWN"
      @hours[:seedbed_prep] = SEEDBED_PREP_HOURS
      @costs[:land_prep] = 2.00/6*(SEEDBED_PREP_HOURS + CARABAO_HOURS) # (2 pesos/day)/(6 hours/day)x(total hours)
      @hours[:land_prep] = CARABAO_HOURS
    end
  elsif @prep_method == "TRACTOR"
    puts "THE CURRENT RATE FOR HIRED TRACTOR PLUS DRIVER IS"
    puts "#{TRACTOR_RATE} PESOS/HR." 
    @own_or_hire = "HIRE"
    @costs[:seedbed_prep] = CARABAO_RATE * SEEDBED_PREP_HOURS
    @costs[:land_prep] = TRACTOR_RATE * TRACTOR_HOURS
  end
end

def set_weeding
  puts "There are three weeding methods available"
  puts "     1. HAND WEEDING."
  puts "     2. ROTARY HAND WEEDER."
  puts "     3. GRANULAR HERBICIDE (2,4-D ISOPROPYL ESTER)"
  puts
  puts "THESE METHODS MAY BE EMPLOYED EITHER SINGLY OR IN"
  puts "COMBINATION WITH ONE OTHER METHOD. WHEN REQUESTED,"
  puts "ENTER NUMBERS CORRESPONDING TO THE METHODS ABOVE,"
  puts "FOR INSTANCE '2' MEANS ONE ROTARY WEEDING, '32' MEANS"
  puts "2,4-D FOLLOWED BY A ROTARY WEEDING, AND '11' MEANS"
  puts "2 HAND WEEDINGS."
  wait
  puts "Please note the following:"
  puts "   A. WEEDS COMPETE VIGOROUSLY WITH RICE AND LOWER"
  puts "      THE POTENTIAL YIELD."
  puts "   B. WHEN A HAND WEEDING IS DONE IN COMBINATION WITH"
  puts "      ANOTHER METHOD, THE HAND WEEDING IS USUALLY DONE"
  puts "      LAST (I.E. '31', NOT '13'!)"
  puts "   C. if YOU DESIRE NO WEEDING, ENTER 0 (ZERO)."
  puts
  set_color_red
  puts "What weeding method(s) do you wish to use";
  set_color_green
  @weeding_method = get_response(VALID_WEEDING, @weeding_method)
  reset_color
  if @same_flag
    calc_weed_cost
    return
  end
  puts
  puts "Oh my goodness! DURING THE WEED SURVEY MANY BRIGHT RED EGG"
  puts "MASSES OF THE GOLDEN SNAIL WERE SEEN IN YOUR FIELDS. If you wish"
  puts "you may spray MOLLUSCICIDE or remove the snails and eggs by"
  puts "hand. You may also choose to do nothing."
  puts
  set_color_red
  puts "DO YOU WISH TO SPRAY A MOLLUSCICIDE?"
  set_color_green
  @snail_attacks += 1
  response = yes_no
  reset_color
  if response == "YES"
    @costs[:molluscicide] = 315
    @hours[:molluscicide] = 18
    @snail_attacks = 0
  end
  puts
  set_color_red
  puts "DO YOU WISH TO HAND PICK YOUR FIELDS?"
  set_color_green
  response = yes_no
  reset_color
  if response == "YES"
    @hours[:molluscicide] = 60
    @snail_attacks = 0
  end
  puts
  @weeding_days_start = 0
  if @weeding_method == "0" then
    calc_weed_cost
    return
  end
  set_color_red
  puts "HOW MANY DAYS AFTER TRANSPLANTING IS THE WEEDING"
  puts "OPERATION STARTED";
  set_color_green
  @weeding_days_start = get_number(@weeding_days_start)
  reset_color
  calc_weed_cost
end

def calc_weed_cost
  @costs[:weeding] = WEEDING_EFFECTS[@weeding_method][2]
  @hours[:weeding] = WEEDING_EFFECTS[@weeding_method][1]
end

def set_threshing
  set_color_red
  puts "Is the threshing to be done by 'HAND' or by 'MACHINE'";
  set_color_green
  @threshing_method = get_response("HAND,MACHINE",@threshing_method)
  reset_color
end

def set_market_value
  set_color_red
  puts "What is the market value of ROUGH RICE (PESOS/KG.)"
  set_color_green
  while true
    @price = get_number(@price)
    reset_color
    return if @same_flag or @price <= 6.35
    puts "THAT'S WAY ABOVE THE LATEST REPORTED MARKET PRICE."
    puts "PLEASE REPEAT THE PRICE PER KILOGRAM."
  end
end

# Start Simulation

set_color_red
puts "    ARE YOUR FAMILIAR ENOUGH WITH THE PROGRAM TO WISH TO SKIP"
puts "    ALL PRELIMINARIES ";
set_color_green
skip_intro = yes_no

reset_color
if skip_intro == "NO"
  introduce_simulation
  introduce_factors
end
puts
puts
puts "    FOR YOUR FIRST CROP YOU MUST MAKE ALL THE DECISIONS BASED"
puts "    ON THE INFORMATION GIVEN IN THE INITIAL INTRODUCTION"
puts "    AND INSTRUCTIONS."

puts
puts "    This is the WET season and you have IRRIGATION."
#     ASK ABOUT ALL FACTORS USER CONTROLS
#
(1..10).each { |x| change_factors(x) }

while true
   
  #     **************************************
  #     *     CALCULATE COSTS AND YIELDS     *
  #     **************************************
  #
  #     COMPUTE INITIAL ESTIMATE OF YIELD PER HECTACRE
  #
  rice_yield = @pesticide_yield_factor * @seed_defect_factor * WEEDING_EFFECTS[@weeding_method][0] *
    ((@urea_factor_1 * (@urea_n_content**2)) + (@urea_factor_2 * @urea_n_content) + 1) * @seed_yield
  puts ((@urea_factor_1 * (@urea_n_content**2)) + (@urea_factor_2 * @urea_n_content) + 1)

  rice_yield = 0 if rice_yield < 0        # We can never have a negative rice yield
  #
  # 
  #              *** YIELD RESPONSE TO TRACTOR ***
  # 
  if @prep_method == "TRACTOR"
    rice_yield *= 1.07              # 7% yield increase for tractor
    puts "YOU DID A BEAUTifUL JOB PREPARING THE FIELDS."
    puts
  end

  # 
  # 
  # 
  #           *** YIELD RESPONSE TO NO WEEDING ***
  # 
  if @weeding_days_start >=14
    if @weeding_days_start >=20 
      puts "    YOU WAITED TOO LONG TO START THE WEEDING. YOU HAVE "
      puts "    WASTED YOUR TIME AND YOUR LABOR.  TOUGH LUCK!"
      rice_yield *= 0.70            # 30% yield loss
    else
      puts "    YOU HAVE WAITED SO LONG TO START THE WEEDING THAT IT IS"
      puts "    ONLY PARTLY SUCCESSFUL.  BETTER LUCK NEXT TIME."
      rice_yield *= 0.85            # 15% yield loss
    end
    puts
  end

  # 
  #     **** DISEASE YIELD REDUCTION ****
  # 
  puts
  r = 0
  if @seed == "IR64"
    r = Random.rand(4)/100.0    # IR64 IS QUITE RESISTANT
    puts "    LOOKS AS if BACTERIAL BLIGHT AND BLAST HAVE CAUSED ABOUT"
  else
    r = Random.rand(13)/100.0    # local rice not resistant
    puts "    UNFORTUNATELY, GRASSY STUNT AND TUNGRO HAVE CAUSED ABOUT"
  end
  puts         "#{100 * r} PERCENT LOSS OF POTENTIAL YIELD."
  rice_yield *= ( 1 - r )
  puts

  #
  #     ***** TYPHOON *****
  #
  puts
  puts "A VERY STRONG TYPHOON IS REPORTED HEADED TOWARD YOUR AREA"
  puts "FROM THE SOUTH-EAST. TIE DOWN YOUR HOUSE AND PRAY THAT THE"
  puts "STORM MISSES YOUR FARM."
  puts
  puts
  set_color_red
  puts "What is YOUR prayer?"
  set_color_green
  gets
  reset_color                   #  just a pause
  puts
  
  #
  #     ***** SNAILS *****
  #
  if @snail_attacks >= 1
    puts "You didn't get rid of the snails last year. Too bad - they have"
    puts "destroyed MANY plants this year. Better try escargot with garlic."
    r4 = (12+(Random.rand * 6)).floor
    rice_yield *= (1.00 - 0.01*r4)
    puts
  end

  # 
  #      ***** INITIAL ESTIMATE OF YIELD *****
  # 
  puts "    THE FARM SPECIALIST ESTIMATES YOUR CROP AS IT NOW STANDS"
  puts "    AT #{(rice_yield/50).round(1)} CAVANS PER HECTARE."
  puts
  set_color_red
  puts "    Do you think that SHE is correct?"
  set_color_green
  gets
  reset_color                       #  just a pause
  puts
  puts "       W E L L   DON'T COUNT ON THAT FOR HARVEST!!!!"
  puts

  # 
  # 
  #      ***** INSECTICIDE *****
  #           R$=USE OF INSECTICIDE   'YES'  OR  'NO'
  # 
  if skip_intro == "NO"               # A7$ = skip preliminaries
    puts
    puts "Brown plant hopper IS A VERY COMMON INSECT PEST. LOSS OF CROP"
    puts "MAY BE ANYWHERE FROM 0% TO 15% if INSECTICIDE IS USED"
    puts "AS SOON AS INFESTATION IS DISCOVERED (DEPENDING UPON DEGREE"
    puts "OF INFESTATION). However, if CONTROLS ARE NOT USED, LOSSES"
    puts "MAY RUN AS HIGH AS 30%. ON A SLIDING SCALE FROM 0 TO 10:"
    puts
    puts "0 (NONE)...............5 (AVERAGE)..............10 (SEVERE)"
  end
  puts
  r = 0
  unless @costs[:early_pest_control] == 0             # If no systemics, then skip
    puts "DESPITE THE EARLY PEST CONTROL PROGRAM YOU HAVE SOME SIGNS OF"
    puts "INSECT ATTACK. (BUT MUCH LESS THAN YOUR NEIGHBOR TO THE"
    puts "EAST). YOU CAN FIGHT THE ATTACK WITH A SPRAYED INSECTICIDE."
    r = Random.rand(5) + 1
    if @seed == "IR64"
      r /= 2        #  IR64 resists insect attack.
    elsif r <= 0
      puts "YOUR EARLY PEST CONTROL PROGRAM WAS SO EFFECTIVE THAT"
    end
  else
    r = Random.rand(10) + 1
    r /= 2 if @seed == "IR64"         # IR64 resists insect attack.
  end
  puts "THE DEGREE OF INSECT ATTACK THIS YEAR IS #{r}"
  puts
  set_color_red
  puts "DO YOU WISH TO SPRAY AN INSECTICIDE";
  set_color_green
  response = yes_no
  reset_color
  @costs[:insecticide] = 1.5 * 112           # cost of insecticide, 1.5 qts azodrin
  @hours[:insecticide] = 2*8                   # 2 days labor to apply insecticide
  if response == "NO"
    @costs[:insecticide] = 0
    @hours[:insecticide] = 0
    r *= 2
  end
  rice_yield *= (1.00 - 0.015 * r)          # Crops x (1-fraction loss of crop)

  # 
  # 
  #      ***** BIRD ATTACK *****
  # 
  @hours[:bird_repelling] = 0                    # We haven't done anything yet about birds
  r3 = Random.rand(6) +1
  puts
  if skip_intro == "NO"
    puts "BEING A GOOD ECOLOGY MINDED FARMER YOU DID NOT KILL OR "
    puts "POISON THE BIRDS. THEY ARE NOW EATING THE RIPENING GRAIN."
  end
  puts
  set_color_red
  puts "DO YOU WISH TO PROTECT YOUR CROP AGAINST BIRDS";
  set_color_green
  response = yes_no
  reset_color
  if response == "YES"
    if @run_count <= 4
      puts "YOU AND YOUR SONS WILL TAKE TURNS STANDING IN THE FIELDS"
      puts "WAVING FLAGS AND USING SLINGSHOTS ON THE LITTLE PESTS."
    end
    @hours[:bird_repelling] = 14 * 4

    r3 = (r3/2 + 0.5).floor
    puts
    puts "YOUR BIRD LOSS HAS BEEN REDUCED TO ONLY #{r3} PERCENT!"
    puts
  else
    puts
    puts "OH WELL, THEY WILL GET ONLY ABOUT #{r3} PERCENT."
  end

  rice_yield *= (1.00 - 0.01 * r3)          # Crops x (1-bird loss)
  # 
  # 
  #      ***** TYPHOON *****
  #      R5=TYPHOON VARIABLE
  # 
  puts
  r5 = Random.rand(10)
  if r5 <= 4 
    puts "Your prayer has worked. The typhoon missed your area!"
  else
    puts "SECOND TYPHOON WARNING. ITS COMING YOUR WAY."
  end
  puts

  # 
  # 
  #      ***** RATS *****
  # 
  @costs[:rodenticide] = 0              # No raticide yet
  @hours[:rodenticide] = 0
  a3 = (Math.sqrt(-2 * Math.log(Random.rand))*Math.sin(2 * Math::PI * Random.rand)).abs     # Rat loss
  puts
  set_color_red
  puts "RATS ARE ATTACKING RICE IN SOME FIELDS TO THE SOUTH OF YOUR"
  puts "FARM - DO YOU WISH TO SET OUT POISON";
  set_color_green
  response = yes_no
  reset_color
  a4 = 0
  if response == "YES" 
    # 
    # 
    #      POISON TO BE APPLIED
    # 
    unless skip_intro == "YES"         # Unfamiliar with program
      puts "ACUTE RATICIDES GIVE SPECTACULAR RESULTS BUT IN THE LONG"
      puts "RUN CHRONIC POISONS ARE MORE EFFECTIVE AS WELL AS MORE"
      puts "COSTLY AND TIME CONSUMING,"
      puts
    end
    set_color_red
    puts "DO YOU WISH TO USE 'CHRONIC' OR 'ACUTE' POISON";
    set_color_green
    @poison = get_response("CHRONIC,ACUTE", @poison)
    if @poison == "CHRONIC" 
      # 
      # 
      #      CHRONIC POISON -- WARFARIN
      # 
      reset_color
      puts "HAVE YOU USED CHRONIC POISONS BEFORE";
      set_color_green
      response = yes_no
      reset_color
      if response == "NO" 
        puts
        puts "YOU HAVE CHOSEN WARFARIN IN .5% CONCENTRATION. YOU MUST"
        puts "MIX IT WITH 19 PARTS OF CEREAL, WRAP IT IN BANANA LEAVES"
        puts "AND PLACE IT ALONG RAT RUNS.  DO THIS EACH DAY FOR 2 WEEKS."
      end
      @costs[:rodenticide] = 67.5         # cost of warfarin /ha
      @hours[:rodenticide] = 14 * 3         # Hours of labor to apply warfaran/ha.
    else
      # 
      # 
      #      ACUTE POISON -- ZINC PHOSPHIDE
      # 
      set_color_red
      puts "HAVE YOU USED ACUTE POISON BEFORE";
      set_color_green
      response = yes_no
      reset_color
      if response == "NO"
        puts
        puts "YOU WILL USE ZINC PHOSPHIDE. MIX IT WITH 150 PARTS OF "
        puts "BAIT AND PLACE IT ON RAT RUNS. BE CAREFUL - ONCE THIS REACHES"
        puts "THE STOMACH (RAT OR HUMAN) IT RELEASES PHOSPHINE GAS"
        puts "CAUSING TOTAL PARALYSIS OF THE CENTRAL NERVOUS SYSTEM. IT"
        puts "IS VERY DANGEROUS. SOMEONE MAY GET HURT. RATS POISONED THIS"
        puts "WAY ARE RENDERED INEDIBLE!"
      end
      @costs[:rodenticide] = 48             # Cost / ha for zinc phosphide
      @hours[:rodenticide] = 3 * 3          # Hours to apply zinc/ha.
    end
    puts
    # 
    # 
    #      COMPUTE CROP LOSS WITH RATICIDE
    # 
    a4 = Random.rand(a3*5).floor         # Cut rat loss to 1/3
    puts
    puts "YOU HAVE CUT YOUR POTENTIAL RAT LOSS DRAMATICALLY."
    puts "CONGRATULATIONS! ONLY #{a4} PERCENT OF THE CROP WAS LOST."
  else
    # 
    # 
    #      COMPUTE CROP LOSS WITHOUT RATICIDE
    # 
    puts
    a4 = Random.rand(a3*15).floor
    if a4 <= 24 
      if a4 <= 12 
        puts "YOU WERE VERY LUCKY THIS SEASON, PALAY GREW WELL AND YOU"
        puts "LOST ONLY #{a4} PERCENT OF THE CROP TO RATS."
      else
        puts "CROP LOOKED GOOD BUT IN THE WEEK BEFORE HARVEST MANY RATS"
        puts "CONVERGED ON THE FIELDS AND DESTROYED #{a4} PERCENT OF"
        puts "THE STANDING CROP.  BETTER LUCK NEXT YEAR!!"
      end
    else
      puts "THE PALAY WAS DOING WELL - BUT, MAN - DID YOU GET HIT BY"
      puts "RATS!! 10 DAYS BEFORE HARVEST THEY DESCENDED LIKE THE PLAGUE"
      puts "AND RUINED #{a4} PERCENT OF YOUR STAND.  EGAD!!"
    end
  end
  puts
  rice_yield *= (1.00 - 0.01 * a4)          # Total crop x (1-destroyed by rats)
  puts
  puts
  # 
  # 
  #      ***** TYPHOON *****
  # 
  if r5 >= 5 
    if r5 == 9 
      puts "TOUGH LUCK. THE TYPHOON PASSED THROUGH YOUR PROVINCE AND"
      puts "THE CROP IS IN A TERRIBLE MESS."
      rice_yield *= 0.6           # 35% yield loss
      puts
    else
      puts "THE TYPHOON PASSED CLOSE BY. HIGH WIND AND HEAVY RAIN CAUSED"
      puts "GREAT LODGING BUT MUCH OF THE CROP CAN BE SAVED."
      rice_yield *= 0.8               # 20% yield loss
    end
  end
  # 
  #                  **** LOW WAGE LOSS ****
  # 
  if @wages <= 100 
    if @wages >= 90 
      puts
      puts
      puts "Your wage rate is so low that you attracted only very LAZY"
      puts "workers.  WHAT A SHAME!     # "
      rice_yield *= 0.88           # yield decreased by 12%
    else
      puts "Your wages are so low that it is almost impossible to hire"
      puts "anyone. Work has been delayed and yield has suffered!"
      rice_yield *= 0.75           # yield decreased by 25%
    end
    puts
  end
  puts
  # 
  #      ***** GET HARVESTING ETC. COST *****
  # 
  #  HARVESTING
  # 
  @hours[:harvesting] = 0.0311 * rice_yield           # .0311=number of hours to harvest 1kg.

  # 
  # 
  #  THRESHING
  # 
  @costs[:threshing] = @hours[:threshing] = 0

  if @threshing_method == "MACHINE"
    rice_yield *= 0.97                 # 3% extra loss for machine use
    @costs[:threshing] = 0.05 * rice_yield * @price   # 5% of crop goes to machine owner
  else
    @hours[:threshing] = 0.05 * rice_yield
  end

  # 
  # 
  #  HAULING
  # 
  @costs[:hauling] = 0.012 * rice_yield

  # 
  # 
  #      ***** CONVERT TO PESOS FROM HOURS OF LABOR *****
  # 
  FACTORS.each do |f|
    @labor[f] = (@farm_size * @wages / 8)* @hours[f]
  end

  # 
  # 
  #      ***** PUT COST IN TERMS OF TOTAL FARM SIZE *****
  # 
  FACTORS.each do |f|
    @total_costs[f] = @farm_size * @costs[f]
  end

  # 
  # 
  #      ******************************
  #      *     COMPUTE TOTAL COST     *
  #      ******************************
  # 
  subtotal = @total_costs[:early_pest_control]  # Materials, early pest control
  subtotal += @total_costs[:seeds]              # Seeds
  subtotal += @total_costs[:fertilizer]         # Fertilizer
  subtotal += @total_costs[:insecticide]        # Insecticide
  subtotal += @total_costs[:weeding]            # Herbicides for weeding
  subtotal += @total_costs[:rodenticide]        # Rodenticide and bait
  subtotal += @total_costs[:molluscicide]       # Molluscicide
  subtotal += @total_costs[:seedbed_prep] +
    @labor[:seedbed_prep]                     # Cost for seedbed preparation
  subtotal += @total_costs[:land_prep] +
    @labor[:land_prep]                        # Cost for land preparation
  subtotal += @labor[:early_pest_control]       # Labor for ealry pest control
  subtotal += @labor[:fertilizer]               # Labor cost of applying fertilizer
  subtotal += @labor[:transplanting]            # Cost of transplanting
  subtotal += @labor[:insecticide]              # Labor cost for applying insecticide
  subtotal += @labor[:weeding]                  # Weeding cost
  subtotal += @labor[:molluscicide]             # Labor for snail treatment
  subtotal += @labor[:bird_repelling] / 2       # Labor for bird watch 1/2price
  subtotal += @labor[:rodenticide]              # Application of rodenticide
  subtotal += @labor[:harvesting]               # Harvesting cost
  subtotal += @total_costs[:threshing]          # Cost for machine threshing
  subtotal += @labor[:threshing]                # Cost for hand threshing
  subtotal += @total_costs[:hauling]            # Hauling cost
  operating_costs = subtotal                    # Total operating costs
  subtotal += @total_costs[:irrigation]         # Irrigation fees
  subtotal += @total_costs[:land_tax]           # Land tax

  # 
  # 
  total_yield = rice_yield * @farm_size       # Compute total yield

  # 
  # 
  #      ****************************************
  #      *     COST-YIELD ANALYSIS putsOUT     *
  #      ****************************************
  # 
  fmt =  "%-31s     %9.2f"
  fmt2 = "    %-31s %9.2f"
  # 
  # 

  set_color_red
  puts "WOULD YOU LIKE A COMPLETE COST-YIELD ANALYSIS";
  set_color_green
  response = yes_no
  reset_color
  mortgage = (total_yield * @price) * 4 * 0.07
  subtotal += mortgage
  # if B$=" "  LET UU(2) = UU(1)
  puts
  # C1 = C1+UU(1)
  puts
  puts
  puts
  puts "----------------------------------------------------------------"
  puts
  puts
  puts
  puts "       ECONOMICS OF RICE PRODUCTION IN THE PHILIPPINES"
  puts
  puts
  puts
  puts "RICE TYPE: #{@seed}"
  puts
  puts "FARM SIZE: #{@farm_size} HECTARES"
  puts "TOTAL YIELD: #{total_yield.round} KILOGRAMS"
   
  puts "              (#{(total_yield/50.0).round(1)} CAVANS PER HA.)"
  puts
  puts
  puts "........................."
  wait
  puts
  if response == "YES" 
    puts "#{" " * 40}Land Reform Owner"
    puts
    puts "OPERATING COST:"
    puts
    puts "MATERIAL INPUTS"
    puts
    if @total_costs[:early_pest_control] != 0
      puts format(fmt2, " MATERIALS - EARLY PEST CONTROL", @total_costs[:early_pest_control])  
    end
    puts format(fmt2, " SEEDS (50 KG/HA)", @total_costs[:seeds])
    if @total_costs[:fertilizer] != 0 
      puts "    FERTILIZER (UREA) @#{ @urea_cost } PESOS/KG."
      puts format(fmt2, "  ", @total_costs[:fertilizer])
    end
    if @total_costs[:insecticide] != 0 
      puts format(fmt2, "INSECTICIDE  @112  PESOS/BOTTLE", @total_costs[:insecticide])
    end
    if @total_costs[:weeding] != 0 
      puts format(fmt2, "HERBICIDE (.8KG AI/HA)", @total_costs[:weeding])
    end
    if @total_costs[:rodenticide] != 0
      puts format(fmt2, "RODENTICIDE AND BAIT", @total_costs[:rodenticide])
    end
    if @total_costs[:molluscicide] != 0 
     puts format(fmt2, "MOLLUSCICIDE", @total_costs[:molluscicide])
    end
    puts
    wait
    puts "SEEDBED PREPARATION -- 4 DAYS WORKER AND"
    if @own_or_hire == "HIRE" 
      puts "    CARABAO AT #{6 * CARABAO_RATE} PESOS PER DAY"
      puts format(fmt2, "  ", @total_costs[:seedbed_prep])
    else
      puts "   CARABAO.  SEE 'LAND PREPARATION' FOR"
      puts "   COST OF OWNING ANIMAL."
      puts format(fmt2, "OPERATOR'S LABOR", @labor[:seedbed_prep])
    end
    wait
    puts
    puts "LAND PREPARATION -- PLOWING AND HARROWING"
    puts
    if @land_prep == "TRACTOR" 
      puts "    #{@farm_size * TRACTOR_HOURS / 8} TRACTOR DAYS @#{8*TRACTOR_RATE} PESOS/DAY"
      puts format(fmt2, "  ", @total_costs[:land_prep])
    else
      if @own_or_hire == "HIRE" 
        puts "   #{@farm_size * CARABAO_HOURS / 6} DAYS FOR CARABAO"
        puts "    AT #{6 * CARABAO_RATE} PESOS PER DAY"
        puts format(fmt2, "  ", @total_costs[:land_prep])
      else
        puts format(fmt2, "COST OF OWNING CARABAO", @total_costs[:land_prep])
        puts format(fmt2, "OPERATORS LABOR", @labor[:land_prep])
      end
    end
    wait
    puts
    if @labor[:early_pest_control] != 0 
       puts format(fmt2, "LABOR - EARLY PEST CONTROL", @labor[:early_pest_control])
       puts
    end
    if @labor[:molluscicide] != 0 
      puts format(fmt, "LABOR FOR SNAIL REMOVAL", @labor[:molluscicide])
    end
    if @total_costs[:fertilizer] != 0 
       puts "COSTS OF APPLYING FERTILIZER"
       puts "    #{@farm_size * @hours[:fertilizer] / 8} PERSON DAYS @#{@wages} PESOS/DAY"
       puts format(fmt2, "  ", @labor[:fertilizer])
    end
    puts
    puts format(fmt, "TRANSPLANTING - 18 WORK DAYS /HA", @labor[:transplanting])
    wait
    puts
    if @labor[:insecticide] != 0 
      puts "APPLICATION OF PESTICIDE"
      puts "    2 DAYS PER HA. AT #{@wages} PESOS PER DAY"
      puts format(fmt2, "  ", @labor[:insecticide])
      puts
    end
    if @weeding_method != "0"
      puts "WEEDING COSTS -- METHOD #{@weeding_method}"
      puts "    #{@hours[:weeding]} HOURS PER HECTARE"
      puts format(fmt2, "  ", @labor[:weeding])
    end
    if @labor[:bird_repelling] != 0 
      puts format(fmt, "CHILD LABOR FOR BIRD WATCH", (@labor[:bird_repelling]/2))
    end
    if @labor[:rodenticide] != 0 
      puts format(fmt, "APPLICATION OF RODENTICIDE", @labor[:rodenticide])
    end
    puts
    wait
    puts "HARVESTING COSTS"
    puts format(fmt2, "HARVEST RATE - 32 KG/WORK HR", @labor[:harvesting])
    puts
    puts "THRESHING"
    puts
    if @threshing_method == "HAND" 
      puts format(fmt2, "RATE ABOUT 40 KG/HR",(@labor[:threshing]/2))
    else
      puts format(fmt2, "COST BY MACHINE - 5% OF YIELD", @total_costs[:threshing])
    end
    puts
    puts format(fmt, "HAULING COST - .012 PESOS/KG", @total_costs[:hauling])
    wait
    puts
    puts "#{" " * 37}---------------------"
    puts format(fmt2, "   TOTAL OPERATING COSTS", operating_costs)
    puts
    puts "NOTE, HOWEVER, THAT A CONSIDERABLE PORTION OF THE FARMER'S"
    puts "COSTS ARE IN TERMS OF personal AND family LABOR."
    puts
    puts
    puts "........................."
    wait
    puts
    puts
    puts "FIXED COSTS"
    puts format(fmt2, "IRRIGATION FEES - 945 PESOS/HA", @total_costs[:irrigation])
    puts format(fmt2, "LAND TAX - 1050 PESOS/HA", @total_costs[:land_tax])
    puts format(fmt2, "PAY MORTGAGE - 4% OVER 20 YEARS", mortgage)
    puts "#{" " * 37}-------------------"
    puts
    puts format(fmt, "T O T A L  C O S T S", (operating_costs + @total_costs[:irrigation] + @total_costs[:land_tax] + mortgage))
    puts
    puts ". . . . . . . . . . . . . . . . . . . . "
    wait
  end
  total_operating_costs = (operating_costs + @total_costs[:irrigation] + @total_costs[:land_tax] + mortgage)
  puts
  puts "  S U M M A R Y"
  puts "                                          LAND REFORM OWNER"
  puts "    TOTAL VALUE OF #{total_yield.round(2)} KILOGRAMS"
  puts "    OF PALAY AT #{ @price }"
  puts "    PESOS PER KILOGRAM                        #{(total_yield * @price).round(2)}"
  puts
  puts "    LESS TOTAL EXPENSES                       #{total_operating_costs.round(2)}"
  puts "#{" " * 36}--------------------"
  puts
  profit = ((total_yield * @price) - total_operating_costs).round(2)
  puts "   N E T  P R O F I T                         #{profit}"
  puts
  puts "     Feels good to own your own land - DOESN'T IT???"
  puts
  if profit < @farm_size * 2800 
    puts "YOU ARE ONE HECK OF A POOR FARMER - YOUR KIDS WILL STARVE"
    puts "AT THAT RATE.  YOU MADE AT LEAST ONE terrible DECISION."
    puts "YOU HAD BETTER CORRECT IT BEFORE NEXT SEASON."
  elsif profit < @farm_size * 4500 
    puts "THAT IS NOT A GOOD YEAR AT ALL. BETTER IMPROVE YOUR TECHNIQUE"
    puts "OR YOU WILL LOOSE THE LAND YOU WORKED SO HARD TO EARN"
  end
  # 
  # 
  puts "----------------------------------------------------------------"
  wait
  # 
  # 
  #      *********************
  #      *     GO AGAIN?     *
  #      *********************
  # 
  puts
  puts
  if skip_intro == "NO" then
    puts "YOU WILL NOW HAVE THE OPTION OF RERUNNING THE PROGRAM."
    puts "YOU MAY KEEP THE SAME RICE TYPE OR YOU MAY CHANGE."
    puts "IN EITHER CASE THE INPUTS WILL REMAIN AS FOR THE FIRST"
    puts "CROP UNTIL YOU DECIDE TO ADOPT A DifFERENT TECHNOLOGY."
  end
  puts
  puts
  set_color_red
  puts "DO YOU WISH TO RUN THE PROGRAM AGAIN?";
  set_color_green
  puts
  puts
  response = yes_no
  reset_color
  exit if response == "NO"
  puts
  puts
  puts
  skip_intro ="YES"
  # 
  # 
  #      *****************************************
  #      *     ASK FOR FACTORS TO BE CHANGED     *
  #      *****************************************
  # 
  puts "WHICH FACTOR DO YOU WISH TO CHANGE"
  puts
  puts "ENTER '0' (ZERO) if YOU DESIRE NOT TO CHANGE ANYTHING."
  puts "OTHERWISE ENTER a number from the list below."
  puts "1   'SIZE OF FARM'"
  puts "2   'COST OF OUTSIDE LABOR'"
  puts "3   'TYPE OF RICE (SEED) USED'"
  puts "4   'COST OF SEED'"
  puts "5   'USE OF SYSTEMIC PESTICIDE, I.P.M., OR NOTHING' "
  puts "6   'COST AND AMOUNT OF NITROGEN FERTILIZER'"
  puts "7   'METHOD OF CROPLAND PREPARATION' "
  puts "8   'METHOD OF WEEDING AND SNAIL PROTECTION'"
  puts "9   'METHOD OF THRESHING' "
  puts "10   'MARKET VALUE OF ROUGH RICE'"
  puts
  set_color_blue
  puts "Remember, in a controlled experiment you can change only"
  puts      "ONE factor at a time! WHICH ONE???"
  reset_color 
                             
  factor = -1  
  while true
    factor = Integer(gets.chomp.strip) rescue -1
    break if factor >= 0 and factor <= 10
    puts "YOU MUST ENTER only A NUMBER BETWEEN 1 AND 10."
    puts "         PLEASE TRY AGAIN"
  end
  change_factors(factor) if factor != 0
  @run_count += 1
end
