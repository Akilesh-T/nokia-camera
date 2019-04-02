.class public Lcom/drew/metadata/iptc/IptcDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "IptcDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor",
        "<",
        "Lcom/drew/metadata/iptc/IptcDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/iptc/IptcDirectory;)V
    .locals 0
    .param p1, "directory"    # Lcom/drew/metadata/iptc/IptcDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getByLineDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/drew/metadata/iptc/IptcDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/iptc/IptcDirectory;

    const/16 v1, 0x250

    invoke-virtual {v0, v1}, Lcom/drew/metadata/iptc/IptcDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getByLineTitleDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/drew/metadata/iptc/IptcDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/iptc/IptcDirectory;

    const/16 v1, 0x255

    invoke-virtual {v0, v1}, Lcom/drew/metadata/iptc/IptcDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaptionDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/drew/metadata/iptc/IptcDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/iptc/IptcDirectory;

    const/16 v1, 0x278

    invoke-virtual {v0, v1}, Lcom/drew/metadata/iptc/IptcDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/drew/metadata/iptc/IptcDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/iptc/IptcDirectory;

    const/16 v1, 0x20f

    invoke-virtual {v0, v1}, Lcom/drew/metadata/iptc/IptcDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCityDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/drew/metadata/iptc/IptcDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/iptc/IptcDirectory;

    const/16 v1, 0x25a

    invoke-virtual {v0, v1}, Lcom/drew/metadata/iptc/IptcDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCopyrightNoticeDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/drew/metadata/iptc/IptcDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/iptc/IptcDirectory;

    const/16 v1, 0x274

    invoke-virtual {v0, v1}, Lcom/drew/metadata/iptc/IptcDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountryOrPrimaryLocationDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/drew/metadata/iptc/IptcDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/iptc/IptcDirectory;

    const/16 v1, 0x265

    invoke-virtual {v0, v1}, Lcom/drew/metadata/iptc/IptcDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreditDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/drew/metadata/iptc/IptcDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/iptc/IptcDirectory;

    const/16 v1, 0x26e

    invoke-virtual {v0, v1}, Lcom/drew/metadata/iptc/IptcDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDateCreatedDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 195
    const/16 v0, 0x237

    invoke-virtual {p0, v0}, Lcom/drew/metadata/iptc/IptcDescriptor;->getDateDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDateDescription(I)Ljava/lang/String;
    .locals 6
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/16 v5, 0x3a

    const/4 v4, 0x6

    const/4 v3, 0x4

    .line 84
    iget-object v1, p0, Lcom/drew/metadata/iptc/IptcDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/iptc/IptcDirectory;

    invoke-virtual {v1, p1}, Lcom/drew/metadata/iptc/IptcDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 86
    const/4 v0, 0x0

    .line 89
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 87
    .restart local v0    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDateSentDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 207
    const/16 v0, 0x146

    invoke-virtual {p0, v0}, Lcom/drew/metadata/iptc/IptcDescriptor;->getDateDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 49
    sparse-switch p1, :sswitch_data_0

    .line 77
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 51
    :sswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/iptc/IptcDescriptor;->getDateCreatedDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :sswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/iptc/IptcDescriptor;->getDigitalDateCreatedDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :sswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/iptc/IptcDescriptor;->getDateSentDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :sswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/iptc/IptcDescriptor;->getExpirationDateDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :sswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/iptc/IptcDescriptor;->getExpirationTimeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    :sswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/iptc/IptcDescriptor;->getFileFormatDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :sswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/iptc/IptcDescriptor;->getKeywordsDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :sswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/iptc/IptcDescriptor;->getReferenceDateDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    :sswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/iptc/IptcDescriptor;->getReleaseDateDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :sswitch_9
    invoke-virtual {p0}, Lcom/drew/metadata/iptc/IptcDescriptor;->getReleaseTimeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :sswitch_a
    invoke-virtual {p0}, Lcom/drew/metadata/iptc/IptcDescriptor;->getTimeCreatedDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :sswitch_b
    invoke-virtual {p0}, Lcom/drew/metadata/iptc/IptcDescriptor;->getDigitalTimeCreatedDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    :sswitch_c
    invoke-virtual {p0}, Lcom/drew/metadata/iptc/IptcDescriptor;->getTimeSentDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    nop

    :sswitch_data_0
    .sparse-switch
        0x114 -> :sswitch_5
        0x146 -> :sswitch_2
        0x150 -> :sswitch_c
        0x219 -> :sswitch_6
        0x21e -> :sswitch_8
        0x223 -> :sswitch_9
        0x225 -> :sswitch_3
        0x226 -> :sswitch_4
        0x22f -> :sswitch_7
        0x237 -> :sswitch_0
        0x23c -> :sswitch_a
        0x23e -> :sswitch_1
        0x23f -> :sswitch_b
    .end sparse-switch
.end method

.method public getDigitalDateCreatedDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 201
    const/16 v0, 0x23e

    invoke-virtual {p0, v0}, Lcom/drew/metadata/iptc/IptcDescriptor;->getDateDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDigitalTimeCreatedDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 312
    const/16 v0, 0x23f

    invoke-virtual {p0, v0}, Lcom/drew/metadata/iptc/IptcDescriptor;->getTimeDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpirationDateDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 213
    const/16 v0, 0x225

    invoke-virtual {p0, v0}, Lcom/drew/metadata/iptc/IptcDescriptor;->getDateDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpirationTimeDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 219
    const/16 v0, 0x226

    invoke-virtual {p0, v0}, Lcom/drew/metadata/iptc/IptcDescriptor;->getTimeDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileFormatDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 106
    iget-object v1, p0, Lcom/drew/metadata/iptc/IptcDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/iptc/IptcDirectory;

    const/16 v2, 0x114

    invoke-virtual {v1, v2}, Lcom/drew/metadata/iptc/IptcDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 107
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 108
    const/4 v1, 0x0

    .line 141
    :goto_0
    return-object v1

    .line 109
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 141
    const-string v1, "Unknown (%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 110
    :pswitch_0
    const-string v1, "No ObjectData"

    goto :goto_0

    .line 111
    :pswitch_1
    const-string v1, "IPTC-NAA Digital Newsphoto Parameter Record"

    goto :goto_0

    .line 112
    :pswitch_2
    const-string v1, "IPTC7901 Recommended Message Format"

    goto :goto_0

    .line 113
    :pswitch_3
    const-string v1, "Tagged Image File Format (Adobe/Aldus Image data)"

    goto :goto_0

    .line 114
    :pswitch_4
    const-string v1, "Illustrator (Adobe Graphics data)"

    goto :goto_0

    .line 115
    :pswitch_5
    const-string v1, "AppleSingle (Apple Computer Inc)"

    goto :goto_0

    .line 116
    :pswitch_6
    const-string v1, "NAA 89-3 (ANPA 1312)"

    goto :goto_0

    .line 117
    :pswitch_7
    const-string v1, "MacBinary II"

    goto :goto_0

    .line 118
    :pswitch_8
    const-string v1, "IPTC Unstructured Character Oriented File Format (UCOFF)"

    goto :goto_0

    .line 119
    :pswitch_9
    const-string v1, "United Press International ANPA 1312 variant"

    goto :goto_0

    .line 120
    :pswitch_a
    const-string v1, "United Press International Down-Load Message"

    goto :goto_0

    .line 121
    :pswitch_b
    const-string v1, "JPEG File Interchange (JFIF)"

    goto :goto_0

    .line 122
    :pswitch_c
    const-string v1, "Photo-CD Image-Pac (Eastman Kodak)"

    goto :goto_0

    .line 123
    :pswitch_d
    const-string v1, "Bit Mapped Graphics File [.BMP] (Microsoft)"

    goto :goto_0

    .line 124
    :pswitch_e
    const-string v1, "Digital Audio File [.WAV] (Microsoft & Creative Labs)"

    goto :goto_0

    .line 125
    :pswitch_f
    const-string v1, "Audio plus Moving Video [.AVI] (Microsoft)"

    goto :goto_0

    .line 126
    :pswitch_10
    const-string v1, "PC DOS/Windows Executable Files [.COM][.EXE]"

    goto :goto_0

    .line 127
    :pswitch_11
    const-string v1, "Compressed Binary File [.ZIP] (PKWare Inc)"

    goto :goto_0

    .line 128
    :pswitch_12
    const-string v1, "Audio Interchange File Format AIFF (Apple Computer Inc)"

    goto :goto_0

    .line 129
    :pswitch_13
    const-string v1, "RIFF Wave (Microsoft Corporation)"

    goto :goto_0

    .line 130
    :pswitch_14
    const-string v1, "Freehand (Macromedia/Aldus)"

    goto :goto_0

    .line 131
    :pswitch_15
    const-string v1, "Hypertext Markup Language [.HTML] (The Internet Society)"

    goto :goto_0

    .line 132
    :pswitch_16
    const-string v1, "MPEG 2 Audio Layer 2 (Musicom), ISO/IEC"

    goto :goto_0

    .line 133
    :pswitch_17
    const-string v1, "MPEG 2 Audio Layer 3, ISO/IEC"

    goto :goto_0

    .line 134
    :pswitch_18
    const-string v1, "Portable Document File [.PDF] Adobe"

    goto :goto_0

    .line 135
    :pswitch_19
    const-string v1, "News Industry Text Format (NITF)"

    goto :goto_0

    .line 136
    :pswitch_1a
    const-string v1, "Tape Archive [.TAR]"

    goto :goto_0

    .line 137
    :pswitch_1b
    const-string v1, "Tidningarnas Telegrambyra NITF version (TTNITF DTD)"

    goto :goto_0

    .line 138
    :pswitch_1c
    const-string v1, "Ritzaus Bureau NITF version (RBNITF DTD)"

    goto :goto_0

    .line 139
    :pswitch_1d
    const-string v1, "Corel Draw [.CDR]"

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.method public getHeadlineDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/drew/metadata/iptc/IptcDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/iptc/IptcDirectory;

    const/16 v1, 0x269

    invoke-virtual {v0, v1}, Lcom/drew/metadata/iptc/IptcDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeywordsDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 231
    iget-object v1, p0, Lcom/drew/metadata/iptc/IptcDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/iptc/IptcDirectory;

    const/16 v2, 0x219

    invoke-virtual {v1, v2}, Lcom/drew/metadata/iptc/IptcDirectory;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "keywords":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 233
    const/4 v1, 0x0

    .line 234
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ";"

    invoke-static {v0, v1}, Lcom/drew/lang/StringUtil;->join([Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getObjectNameDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/drew/metadata/iptc/IptcDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/iptc/IptcDirectory;

    const/16 v1, 0x205

    invoke-virtual {v0, v1}, Lcom/drew/metadata/iptc/IptcDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalTransmissionReferenceDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/drew/metadata/iptc/IptcDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/iptc/IptcDirectory;

    const/16 v1, 0x267

    invoke-virtual {v0, v1}, Lcom/drew/metadata/iptc/IptcDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginatingProgramDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/drew/metadata/iptc/IptcDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/iptc/IptcDirectory;

    const/16 v1, 0x241

    invoke-virtual {v0, v1}, Lcom/drew/metadata/iptc/IptcDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProvinceOrStateDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/drew/metadata/iptc/IptcDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/iptc/IptcDirectory;

    const/16 v1, 0x25f

    invoke-virtual {v0, v1}, Lcom/drew/metadata/iptc/IptcDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecordVersionDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/drew/metadata/iptc/IptcDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/iptc/IptcDirectory;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/drew/metadata/iptc/IptcDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReferenceDateDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 270
    const/16 v0, 0x22f

    invoke-virtual {p0, v0}, Lcom/drew/metadata/iptc/IptcDescriptor;->getDateDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReleaseDateDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 276
    const/16 v0, 0x21e

    invoke-virtual {p0, v0}, Lcom/drew/metadata/iptc/IptcDescriptor;->getDateDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReleaseTimeDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 282
    const/16 v0, 0x223

    invoke-virtual {p0, v0}, Lcom/drew/metadata/iptc/IptcDescriptor;->getTimeDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/drew/metadata/iptc/IptcDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/iptc/IptcDirectory;

    const/16 v1, 0x273

    invoke-virtual {v0, v1}, Lcom/drew/metadata/iptc/IptcDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpecialInstructionsDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/drew/metadata/iptc/IptcDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/iptc/IptcDirectory;

    const/16 v1, 0x228

    invoke-virtual {v0, v1}, Lcom/drew/metadata/iptc/IptcDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupplementalCategoriesDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/drew/metadata/iptc/IptcDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/iptc/IptcDirectory;

    const/16 v1, 0x214

    invoke-virtual {v0, v1}, Lcom/drew/metadata/iptc/IptcDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeCreatedDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 306
    const/16 v0, 0x23c

    invoke-virtual {p0, v0}, Lcom/drew/metadata/iptc/IptcDescriptor;->getTimeDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeDescription(I)Ljava/lang/String;
    .locals 6
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/16 v5, 0x3a

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 95
    iget-object v1, p0, Lcom/drew/metadata/iptc/IptcDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/iptc/IptcDirectory;

    invoke-virtual {v1, p1}, Lcom/drew/metadata/iptc/IptcDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 97
    const/4 v0, 0x0

    .line 100
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 98
    .restart local v0    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 99
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTimeSentDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 318
    const/16 v0, 0x150

    invoke-virtual {p0, v0}, Lcom/drew/metadata/iptc/IptcDescriptor;->getTimeDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrgencyDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lcom/drew/metadata/iptc/IptcDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/iptc/IptcDirectory;

    const/16 v1, 0x20a

    invoke-virtual {v0, v1}, Lcom/drew/metadata/iptc/IptcDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWriterDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lcom/drew/metadata/iptc/IptcDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/iptc/IptcDirectory;

    const/16 v1, 0x27a

    invoke-virtual {v0, v1}, Lcom/drew/metadata/iptc/IptcDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
