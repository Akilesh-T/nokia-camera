.class public Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "SamsungType2MakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor",
        "<",
        "Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDirectory;)V
    .locals 0
    .param p1, "directory"    # Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 44
    return-void
.end method

.method private getCameraTemperatureDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 197
    const/16 v0, 0x43

    const-string v1, "%d C"

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDescriptor;->getFormattedInt(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 50
    sparse-switch p1, :sswitch_data_0

    .line 66
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 52
    :sswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDescriptor;->getMakernoteVersionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :sswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDescriptor;->getDeviceTypeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 56
    :sswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDescriptor;->getSamsungModelIdDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :sswitch_3
    invoke-direct {p0}, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDescriptor;->getCameraTemperatureDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :sswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDescriptor;->getFaceDetectDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 64
    :sswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDescriptor;->getFaceRecognitionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 50
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x43 -> :sswitch_3
        0x100 -> :sswitch_4
        0x120 -> :sswitch_5
    .end sparse-switch
.end method

.method public getDeviceTypeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 79
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDirectory;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 80
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 81
    const/4 v1, 0x0

    .line 96
    :goto_0
    return-object v1

    .line 83
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 96
    const-string v1, "Unknown (%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 86
    :sswitch_0
    const-string v1, "Compact Digital Camera"

    goto :goto_0

    .line 88
    :sswitch_1
    const-string v1, "High-end NX Camera"

    goto :goto_0

    .line 90
    :sswitch_2
    const-string v1, "HXM Video Camera"

    goto :goto_0

    .line 92
    :sswitch_3
    const-string v1, "Cell Phone"

    goto :goto_0

    .line 94
    :sswitch_4
    const-string v1, "SMX Video Camera"

    goto :goto_0

    .line 83
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x3000 -> :sswitch_2
        0x12000 -> :sswitch_3
        0x300000 -> :sswitch_4
    .end sparse-switch
.end method

.method public getFaceDetectDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 203
    const/16 v0, 0x100

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "On"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFaceRecognitionDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 210
    const/16 v0, 0x120

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "On"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMakernoteVersionDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDescriptor;->getVersionBytesDescription(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSamsungModelIdDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 103
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDirectory;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/SamsungType2MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 104
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 105
    const/4 v1, 0x0

    .line 190
    :goto_0
    return-object v1

    .line 107
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 190
    const-string v1, "Unknown (%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 110
    :sswitch_0
    const-string v1, "NX10"

    goto :goto_0

    .line 114
    :sswitch_1
    const-string v1, "HMX-S15BP"

    goto :goto_0

    .line 116
    :sswitch_2
    const-string v1, "HMX-Q10"

    goto :goto_0

    .line 120
    :sswitch_3
    const-string v1, "HMX-H304"

    goto :goto_0

    .line 122
    :sswitch_4
    const-string v1, "NX100"

    goto :goto_0

    .line 124
    :sswitch_5
    const-string v1, "NX11"

    goto :goto_0

    .line 126
    :sswitch_6
    const-string v1, "ES70, ES71 / VLUU ES70, ES71 / SL600"

    goto :goto_0

    .line 128
    :sswitch_7
    const-string v1, "ES73 / VLUU ES73 / SL605"

    goto :goto_0

    .line 130
    :sswitch_8
    const-string v1, "ES28 / VLUU ES28"

    goto :goto_0

    .line 132
    :sswitch_9
    const-string v1, "ES74,ES75,ES78 / VLUU ES75,ES78"

    goto :goto_0

    .line 134
    :sswitch_a
    const-string v1, "PL150 / VLUU PL150 / TL210 / PL151"

    goto :goto_0

    .line 136
    :sswitch_b
    const-string v1, "PL120,PL121 / VLUU PL120,PL121"

    goto :goto_0

    .line 138
    :sswitch_c
    const-string v1, "PL170,PL171 / VLUUPL170,PL171"

    goto :goto_0

    .line 140
    :sswitch_d
    const-string v1, "PL210, PL211 / VLUU PL210, PL211"

    goto :goto_0

    .line 142
    :sswitch_e
    const-string v1, "PL20,PL21 / VLUU PL20,PL21"

    goto :goto_0

    .line 144
    :sswitch_f
    const-string v1, "WP10 / VLUU WP10 / AQ100"

    goto :goto_0

    .line 146
    :sswitch_10
    const-string v1, "Various Models (0x3000000)"

    goto :goto_0

    .line 148
    :sswitch_11
    const-string v1, "Various Models (0x3a00018)"

    goto :goto_0

    .line 150
    :sswitch_12
    const-string v1, "ST1000 / ST1100 / VLUU ST1000 / CL65"

    goto :goto_0

    .line 152
    :sswitch_13
    const-string v1, "ST550 / VLUU ST550 / TL225"

    goto :goto_0

    .line 154
    :sswitch_14
    const-string v1, "Various Models (0x4001025)"

    goto :goto_0

    .line 156
    :sswitch_15
    const-string v1, "VLUU ST5500, ST5500, CL80"

    goto :goto_0

    .line 158
    :sswitch_16
    const-string v1, "VLUU ST5000, ST5000, TL240"

    goto :goto_0

    .line 160
    :sswitch_17
    const-string v1, "ST70 / VLUU ST70 / ST71"

    goto :goto_0

    .line 162
    :sswitch_18
    const-string v1, "Various Models (0x400130a)"

    goto :goto_0

    .line 164
    :sswitch_19
    const-string v1, "ST90,ST91 / VLUU ST90,ST91"

    goto :goto_0

    .line 166
    :sswitch_1a
    const-string v1, "VLUU ST95, ST95"

    goto :goto_0

    .line 168
    :sswitch_1b
    const-string v1, "VLUU ST60"

    goto :goto_0

    .line 170
    :sswitch_1c
    const-string v1, "ST30, ST65 / VLUU ST65 / ST67"

    goto :goto_0

    .line 172
    :sswitch_1d
    const-string v1, "Various Models (0x5000000)"

    goto :goto_0

    .line 174
    :sswitch_1e
    const-string v1, "Various Models (0x5001038)"

    goto :goto_0

    .line 176
    :sswitch_1f
    const-string v1, "WB650 / VLUU WB650 / WB660"

    goto :goto_0

    .line 178
    :sswitch_20
    const-string v1, "WB600 / VLUU WB600 / WB610"

    goto :goto_0

    .line 180
    :sswitch_21
    const-string v1, "WB150 / WB150F / WB152 / WB152F / WB151"

    goto :goto_0

    .line 182
    :sswitch_22
    const-string v1, "WB5000 / HZ25W"

    goto :goto_0

    .line 184
    :sswitch_23
    const-string v1, "EX1"

    goto :goto_0

    .line 186
    :sswitch_24
    const-string v1, "VLUU SH100, SH100"

    goto/16 :goto_0

    .line 188
    :sswitch_25
    const-string v1, "SMX - C20N"

    goto/16 :goto_0

    .line 107
    nop

    :sswitch_data_0
    .sparse-switch
        0x100101c -> :sswitch_0
        0x1001226 -> :sswitch_1
        0x1001233 -> :sswitch_2
        0x1001234 -> :sswitch_3
        0x100130c -> :sswitch_4
        0x1001327 -> :sswitch_5
        0x170104e -> :sswitch_6
        0x1701052 -> :sswitch_7
        0x1701300 -> :sswitch_8
        0x1701303 -> :sswitch_9
        0x2001046 -> :sswitch_a
        0x2001311 -> :sswitch_b
        0x2001315 -> :sswitch_c
        0x200131e -> :sswitch_d
        0x2701317 -> :sswitch_e
        0x2a0001b -> :sswitch_f
        0x3000000 -> :sswitch_10
        0x3a00018 -> :sswitch_11
        0x400101f -> :sswitch_12
        0x4001022 -> :sswitch_13
        0x4001025 -> :sswitch_14
        0x400103e -> :sswitch_15
        0x4001041 -> :sswitch_16
        0x4001043 -> :sswitch_17
        0x400130a -> :sswitch_18
        0x400130e -> :sswitch_19
        0x4001313 -> :sswitch_1a
        0x4a00015 -> :sswitch_1b
        0x4a0135b -> :sswitch_1c
        0x5000000 -> :sswitch_1d
        0x5001038 -> :sswitch_1e
        0x500103a -> :sswitch_1f
        0x500103c -> :sswitch_20
        0x500133e -> :sswitch_21
        0x5a0000f -> :sswitch_22
        0x6001036 -> :sswitch_23
        0x700131c -> :sswitch_24
        0x27127002 -> :sswitch_25
    .end sparse-switch
.end method
