.class public Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "ReconyxHyperFireMakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor",
        "<",
        "Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;)V
    .locals 0
    .param p1, "directory"    # Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 12
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 53
    sparse-switch p1, :sswitch_data_0

    .line 102
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v8

    :cond_0
    :goto_0
    return-object v8

    .line 55
    :sswitch_0
    const-string v8, "%d"

    new-array v9, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v7, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;

    invoke-virtual {v7, p1}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 57
    :sswitch_1
    iget-object v7, p0, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v7, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;

    invoke-virtual {v7, p1}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 59
    :sswitch_2
    iget-object v7, p0, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v7, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;

    invoke-virtual {v7, p1}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 61
    :sswitch_3
    iget-object v7, p0, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v7, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;

    invoke-virtual {v7, p1}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->getIntArray(I)[I

    move-result-object v4

    .line 62
    .local v4, "sequence":[I
    if-eqz v4, :cond_0

    .line 64
    const-string v7, "%d/%d"

    new-array v8, v9, [Ljava/lang/Object;

    aget v9, v4, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    aget v9, v4, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 66
    .end local v4    # "sequence":[I
    :sswitch_4
    const-string v8, "%d"

    new-array v9, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v7, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;

    invoke-virtual {v7, p1}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 68
    :sswitch_5
    const-string v8, "%d"

    new-array v9, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v7, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;

    invoke-virtual {v7, p1}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 70
    :sswitch_6
    iget-object v7, p0, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v7, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;

    invoke-virtual {v7, p1}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->getDoubleObject(I)Ljava/lang/Double;

    move-result-object v6

    .line 71
    .local v6, "value":Ljava/lang/Double;
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v7, "0.000"

    invoke-direct {v2, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 72
    .local v2, "formatter":Ljava/text/DecimalFormat;
    if-nez v6, :cond_1

    move-object v7, v8

    :goto_1
    move-object v8, v7

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v2, v6}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 74
    .end local v2    # "formatter":Ljava/text/DecimalFormat;
    .end local v6    # "value":Ljava/lang/Double;
    :sswitch_7
    iget-object v7, p0, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v7, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;

    invoke-virtual {v7, p1}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "date":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 77
    .local v3, "parser":Ljava/text/DateFormat;
    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto/16 :goto_0

    .line 78
    .end local v3    # "parser":Ljava/text/DateFormat;
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/text/ParseException;
    goto/16 :goto_0

    .line 82
    .end local v0    # "date":Ljava/lang/String;
    .end local v1    # "e":Ljava/text/ParseException;
    :sswitch_8
    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "New"

    aput-object v8, v7, v10

    const-string v8, "Waxing Crescent"

    aput-object v8, v7, v11

    const-string v8, "First Quarter"

    aput-object v8, v7, v9

    const/4 v8, 0x3

    const-string v9, "Waxing Gibbous"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "Full"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string v9, "Waning Gibbous"

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "Last Quarter"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    const-string v9, "Waning Crescent"

    aput-object v9, v7, v8

    invoke-virtual {p0, p1, v7}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 85
    :sswitch_9
    const-string v8, "%d"

    new-array v9, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v7, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;

    invoke-virtual {v7, p1}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 88
    :sswitch_a
    iget-object v7, p0, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v7, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;

    invoke-virtual {v7, p1}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->getStringValue(I)Lcom/drew/metadata/StringValue;

    move-result-object v5

    .line 89
    .local v5, "svalue":Lcom/drew/metadata/StringValue;
    if-eqz v5, :cond_0

    .line 91
    invoke-virtual {v5}, Lcom/drew/metadata/StringValue;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 96
    .end local v5    # "svalue":Lcom/drew/metadata/StringValue;
    :sswitch_b
    const-string v8, "%d"

    new-array v9, v11, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v7, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;

    invoke-virtual {v7, p1}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 98
    :sswitch_c
    new-array v7, v9, [Ljava/lang/String;

    const-string v8, "Off"

    aput-object v8, v7, v10

    const-string v8, "On"

    aput-object v8, v7, v11

    invoke-virtual {p0, p1, v7}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 100
    :sswitch_d
    iget-object v7, p0, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v7, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;

    invoke-virtual {v7, p1}, Lcom/drew/metadata/exif/makernotes/ReconyxHyperFireMakernoteDirectory;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 53
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0xc -> :sswitch_2
        0xe -> :sswitch_3
        0x12 -> :sswitch_4
        0x16 -> :sswitch_7
        0x24 -> :sswitch_8
        0x26 -> :sswitch_9
        0x28 -> :sswitch_9
        0x2a -> :sswitch_a
        0x48 -> :sswitch_b
        0x4a -> :sswitch_b
        0x4c -> :sswitch_b
        0x4e -> :sswitch_b
        0x50 -> :sswitch_c
        0x52 -> :sswitch_5
        0x54 -> :sswitch_6
        0x56 -> :sswitch_d
    .end sparse-switch
.end method
