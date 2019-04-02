.class public Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "OlympusRawDevelopment2MakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor",
        "<",
        "Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;",
        ">;"
    }
.end annotation


# static fields
.field private static final _filters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    .line 191
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Soft Focus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Pop Art"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Pale & Light Color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Light Tone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Pin Hole"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Grainy Film"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Diorama"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Cross Process"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Fish Eye"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Drawing"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Gentle Sepia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Pale & Light Color II"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Pop Art II"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Pin Hole II"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Pin Hole III"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Grainy Film II"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Dramatic Tone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Punk"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Soft Focus 2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Sparkle"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Watercolor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Key Line"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Key Line II"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Miniature"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Reflection"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Fragmented"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Cross Process II"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Dramatic Tone II"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Watercolor I"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Watercolor II"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Diorama II"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Vintage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Vintage II"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Vintage III"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Partial Color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Partial Color II"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Partial Color III"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    return-void
.end method

.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;)V
    .locals 0
    .param p1, "directory"    # Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;
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
    .locals 1
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 53
    sparse-switch p1, :sswitch_data_0

    .line 73
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 55
    :sswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->getRawDevVersionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :sswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->getRawDevExposureBiasValueDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :sswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->getRawDevColorSpaceDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    :sswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->getRawDevNoiseReductionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :sswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->getRawDevEngineDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :sswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->getRawDevPictureModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    :sswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->getRawDevPmBwFilterDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :sswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->getRawDevPmPictureToneDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :sswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->getRawDevArtFilterDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x100 -> :sswitch_1
        0x109 -> :sswitch_2
        0x10a -> :sswitch_3
        0x10b -> :sswitch_4
        0x10c -> :sswitch_5
        0x110 -> :sswitch_6
        0x111 -> :sswitch_7
        0x121 -> :sswitch_8
    .end sparse-switch
.end method

.method public getFilterDescription(I)Ljava/lang/String;
    .locals 5
    .param p1, "tag"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 171
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;

    invoke-virtual {v3, p1}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;->getIntArray(I)[I

    move-result-object v2

    .line 172
    .local v2, "values":[I
    if-eqz v2, :cond_0

    array-length v3, v2

    if-nez v3, :cond_1

    .line 173
    :cond_0
    const/4 v3, 0x0

    .line 184
    :goto_0
    return-object v3

    .line 175
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 177
    if-nez v0, :cond_3

    .line 178
    sget-object v3, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    aget v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_filters:Ljava/util/HashMap;

    aget v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :goto_3
    const-string v3, "; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 178
    :cond_2
    const-string v3, "[unknown]"

    goto :goto_2

    .line 180
    :cond_3
    aget v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 184
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getRawDevArtFilterDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 165
    const/16 v0, 0x121

    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->getFilterDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawDevColorSpaceDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 93
    const/16 v0, 0x109

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sRGB"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Adobe RGB"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Pro Photo RGB"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawDevEngineDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 120
    const/16 v0, 0x10b

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "High Speed"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "High Function"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Advanced High Speed"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Advanced High Function"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawDevExposureBiasValueDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 86
    const/16 v0, 0x100

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Color Temperature"

    aput-object v3, v1, v2

    const-string v2, "Gray Point"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawDevNoiseReductionDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 100
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;

    const/16 v4, 0x10a

    invoke-virtual {v3, v4}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v2

    .line 101
    .local v2, "value":Ljava/lang/Integer;
    if-nez v2, :cond_0

    .line 102
    const/4 v3, 0x0

    .line 114
    :goto_0
    return-object v3

    .line 104
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    .line 105
    const-string v3, "(none)"

    goto :goto_0

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 110
    .local v1, "v":I
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_2

    const-string v3, "Noise Reduction, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_2
    shr-int/lit8 v3, v1, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    const-string v3, "Noise Filter, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_3
    shr-int/lit8 v3, v1, 0x2

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    const-string v3, "Noise Filter (ISO Boost), "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getRawDevPictureModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 127
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;

    const/16 v2, 0x10c

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 128
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 129
    const/4 v1, 0x0

    .line 144
    :goto_0
    return-object v1

    .line 131
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 134
    :sswitch_0
    const-string v1, "Vivid"

    goto :goto_0

    .line 136
    :sswitch_1
    const-string v1, "Natural"

    goto :goto_0

    .line 138
    :sswitch_2
    const-string v1, "Muted"

    goto :goto_0

    .line 140
    :sswitch_3
    const-string v1, "Monotone"

    goto :goto_0

    .line 142
    :sswitch_4
    const-string v1, "Sepia"

    goto :goto_0

    .line 131
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x100 -> :sswitch_3
        0x200 -> :sswitch_4
    .end sparse-switch
.end method

.method public getRawDevPmBwFilterDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 151
    const/16 v0, 0x110

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Neutral"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Yellow"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Orange"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Red"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Green"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawDevPmPictureToneDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 158
    const/16 v0, 0x111

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Neutral"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Sepia"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Blue"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Purple"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Green"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawDevVersionDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;->getVersionBytesDescription(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
