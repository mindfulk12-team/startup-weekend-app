module ApplicationHelper

  def active_class(link_path)
    current_page?(link_path) ? 'active' : ''
  end

  def emotion_helper(selected_word, emotional_sectors)
    emotion_library = {"excited" => "green","proud" => "green","joyful" => "green","hopeful" => "green","friendly" => "green","energetic" => "green","rewarded" => "green","worthy" => "green","motivated" => "green","grateful" => "green","comfortable" => "green","belonging" => "green","curious" => "green","confident" => "green","loved" => "green","eager" => "green","creative" => "green","cheerful" => "green","relaxed" => "green","throughtful" => "green","engaged" => "green","creative" => "green","playful" => "green","aware" => "green","interested" => "green","cooperative" => "green","talkative" => "green","kind" => "green","polite" => "green","silly" => "green","safe" => "green","calm" => "green","content" => "green","angry" => "red","irritated" => "red","frustrated" => "red","annoyed" => "red","hateful" => "red","aggressive" => "red","jealous" => "red", "sad" => "blue","vulnerable" => "blue","isolated" => "blue","lonely" => "blue","isolated" => "blue","lost" => "blue","grieving" => "blue","hopeless" => "blue","disappointed" => "blue","hungry" => "blue","sleepy" => "blue","bored" => "blue","apathetic" => "blue","inadequate" => "blue","distracted" => "blue","sensitive" => "blue","guilty" => "blue","upset" => "blue","withdrawn" => "blue","unsafe" => "blue", "anxious" => "yellow","stressed" => "yellow","apprehensive" => "yellow","overwhelmed" => "yellow","worried" => "yellow","frustrated" => "yellow","skeptical" => "yellow","shy" => "yellow","afraid" => "yellow","antsy" => "yellow","confused" => "yellow","quiet" => "yellow","okay" => "yellow","good" => "yellow","fine" => "yellow"}
    if emotion_library[selected_word] == "green"
      emotional_sectors["green"] += 1
    elsif emotion_library[selected_word] == "red"
      emotional_sectors["red"] += 1
    elsif emotion_library[selected_word] == "blue"
      emotional_sectors["blue"] += 1
    else emotion_library[selected_word] == "yellow"
      emotional_sectors["yellow"] += 1
    end
    emotional_sectors
  end

end
