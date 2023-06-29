namespace :i18n do
  desc 'Export I18n translations to JavaScript'

  task export: :environment do
    translations = {}

    Dir.glob(Rails.root.join("config", "locales", "*.yml")) do |file|
      locale = File.basename(file, ".yml")
      translations[locale.to_sym] = YAML.load_file(file)[locale]
    end

    javascript_file = Rails.root.join("app", "javascript", "i18n.js")
    File.open(javascript_file, "w") do |f|
      f.write("const i18n = #{translations.to_json};\n\nexport default i18n;\n")
    end

    puts "i18n export completed!"
  end
end
