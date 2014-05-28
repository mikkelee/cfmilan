{ Book @RefStyle @Style
  {  @Reference&&reftag @Open
     {
	{ @Author,  {}			} @If @Author
	{ @I @Title			} @If @Title
	{ @Word&&notitle		} @If @Not @Title
	{ , @Pinpoint			} @If @Pinpoint
	{ .				} @If @True
	{ {}  @TitleNote.		} @If @TitleNote
	{ {}  @Journal		
	{ {}  @Word&&nopublisher	} @If @Not @Journal
	{ {} (@Volume			} @If @Volume
	{ {} , @Number)			} @If @Number @And @Volume
	{ {} (@Number)			} @If @Number @And @Not @Volume } @If @Journal
	{ , @Pages			} @If @Pages
	{ , @Word&&page @Page		} @If @Page
	{ , @Word&&page @NumSep @Page	} @If @Page
	{ .  @Publisher			} @If @Publisher
	{ {} (@Day @Month @Year)	} @If @Year @And @Month @And @Day
	{ {} (@Month @Year)		} @If @Year @And @Month @And @Not @Day
	{ {} (@Year)			} @If @Year @And @Not @Month
	{ .				} @If @True
	{ {}  URL @I { @URL }.		} @If @URL
	{ {}  @Note			} @If @Note
     }
  }
}
