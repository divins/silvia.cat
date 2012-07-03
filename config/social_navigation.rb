#encoding: utf-8

SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.dom_id = 'social'
    primary.item 'twitter', content_tag(:span, '@JDivCast'), 'http://twitter.com/JDivCast', title: '@JDivCast'
    # primary.item 'deviantart', content_tag(:span, 'silviabrujas on deviantART'), 'http://silviabrujas.deviantart.com', title: 'silviabrujas on deviantART'
    primary.item 'email', content_tag(:span, 'joan at divinscastellvi.name'), 'mailto:joan@divinscastellvi.name', title: 'joan at divinscastellvi.name'
  end
end
