#!/usr/bin/ruby
# 品詞分解 esperanto

class String
	def part_of_speech?
		# 名詞の判別
		# 名詞は語尾-oを持ちます。複数形は-ojとします
		if self.end_with?("o") || self.end_with?("oj") then
			if self.end_with?("o")
				"#{self} is singular form of noun"
			else
				"#{self} is plural form of noun"
			end
		# 形容詞の判別
		# 形容詞は語尾-aを持ちます。複数名詞を修飾する場合は-ajとします。
		elsif self.end_with?("a") || self.end_with?("aj") then
			if self.end_with?("a")
				"#{self} is an adjective"
			else
				"#{self} is an adjective that modify plural nouns"
			end
		# 名詞及び形容詞の対格の判別
		elsif self.end_with?("on") || self.end_with?("ojn") then
			if self.end_with?("on")
				"#{self} is a singular noun accusative"
			else
				"#{self} is a plural noun accusative"
			end
		elsif self.end_with?("an") || self.end_with?("ajn") then
			if self.end_with?("an")
				"#{self} is an adjective that modify a noun accusative"
			else
				"#{self} is an adjective that modify a plural noun accusative"
			end				
		# 副詞の判別
		# 副詞のほとんどは語尾-eを持ちます
		elsif self.end_with?("e") then
			"#{self} は副詞です"
		# 動詞の判定
		# 動詞の不定形は-iです。動詞は語尾の形で時制を表します。-asが現在形、-isが過去形、-osが未来形です。
		elsif self.end_with?("i") || self.end_with?("as") || self.end_with?("is") || self.end_with?("os") then
			if self.end_with?("i")
				"#{self} is an irregular verb"
			elsif self.end_with?("as")
				"#{self} is a present tense of verb"
			elsif self.end_with?("is")
				"#{self} is a past tense of verb"
			else
				"#{self} is a future tense of verb"
			end
		# 動詞の命令形は語尾が-uです
		elsif self.end_with?("u")
			"#{self} is an imperative form of verb"
		else
			"unknown word"
		end
	end
end		
