class Services::Code
	def self.generate
		SecureRandom.base64(16).gsub("/", "")
	end
end
