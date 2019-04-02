.class public Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "CanonMakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor",
        "<",
        "Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;",
        ">;"
    }
.end annotation


# static fields
.field private static final _lensTypeById:Ljava/util/HashMap;
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
    .line 950
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    .line 953
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 50mm f/1.8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 28mm f/2.8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 135mm f/2.8 Soft"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 35-105mm f/3.5-4.5 or Sigma Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 35-70mm f/3.5-4.5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 28-70mm f/3.5-4.5 or Sigma or Tokina Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 100-300mm f/5.6L"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 100-300mm f/5.6 or Sigma or Tokina Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 70-210mm f/4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 50mm f/2.5 Macro or Sigma Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 35mm f/2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 15mm f/2.8 Fisheye"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 50-200mm f/3.5-4.5L"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 50-200mm f/3.5-4.5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 35-135mm f/3.5-4.5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 35-70mm f/3.5-4.5A"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 28-70mm f/3.5-4.5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 100-200mm f/4.5A"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 80-200mm f/2.8L"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 20-35mm f/2.8L or Tokina Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 35-105mm f/3.5-4.5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 35-80mm f/4-5.6 Power Zoom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 35-80mm f/4-5.6 Power Zoom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 100mm f/2.8 Macro or Other Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 35-80mm f/4-5.6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 80-200mm f/4.5-5.6 or Tamron Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 50mm f/1.8 II"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 35-105mm f/4.5-5.6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 75-300mm f/4-5.6 or Tamron Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 24mm f/2.8 or Sigma Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Voigtlander or Carl Zeiss Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 35-80mm f/4-5.6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 38-76mm f/4.5-5.6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 35-80mm f/4-5.6 or Tamron Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 80-200mm f/4.5-5.6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 75-300mm f/4-5.6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 28-80mm f/3.5-5.6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 28-90mm f/4-5.6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 28-200mm f/3.5-5.6 or Tamron Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 28-105mm f/4-5.6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 90-300mm f/4.5-5.6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF-S 18-55mm f/3.5-5.6 [II]"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 28-90mm f/4-5.6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Zeiss Milvus 35mm f/2 or 50mm f/2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF-S 18-55mm f/3.5-5.6 IS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF-S 55-250mm f/4-5.6 IS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF-S 18-200mm f/3.5-5.6 IS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF-S 18-135mm f/3.5-5.6 IS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF-S 18-55mm f/3.5-5.6 IS II"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF-S 18-55mm f/3.5-5.6 III"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF-S 55-250mm f/4-5.6 IS II"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x5e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon TS-E 17mm f/4L"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x5f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon TS-E 24.0mm f/3.5 L II"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x7c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon MP-E 65mm f/2.8 1-5x Macro Photo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x7d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon TS-E 24mm f/3.5L"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x7e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon TS-E 45mm f/2.8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x7f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon TS-E 90mm f/2.8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 300mm f/2.8L"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x82

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 50mm f/1.0L"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 28-80mm f/2.8-4L or Sigma Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 1200mm f/5.6L"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 600mm f/4L IS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 200mm f/1.8L"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 300mm f/2.8L"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x89

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 85mm f/1.2L or Sigma or Tamron Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 28-80mm f/2.8-4L"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 400mm f/2.8L"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 500mm f/4.5L"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 500mm f/4.5L"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 300mm f/2.8L IS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 500mm f/4L IS or Sigma Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 35-135mm f/4-5.6 USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 100-300mm f/4.5-5.6 USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x92

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 70-210mm f/3.5-4.5 USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 35-135mm f/4-5.6 USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x94

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 28-80mm f/3.5-5.6 USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 100mm f/2 USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x96

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 14mm f/2.8L or Sigma Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x97

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 200mm f/2.8L"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 300mm f/4L IS or Sigma Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 35-350mm f/3.5-5.6L or Sigma or Tamron Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x9a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 20mm f/2.8 USM or Zeiss Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 85mm f/1.8 USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x9c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 28-105mm f/3.5-4.5 USM or Tamron Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xa0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 20-35mm f/3.5-4.5 USM or Tamron or Tokina Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xa1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 28-70mm f/2.8L or Sigma or Tamron Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xa2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 200mm f/2.8L"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xa3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 300mm f/4L"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xa4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 400mm f/5.6L"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xa5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 70-200mm f/2.8 L"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xa6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 70-200mm f/2.8 L + 1.4x"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xa7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 70-200mm f/2.8 L + 2x"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xa8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 28mm f/1.8 USM or Sigma Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xa9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 17-35mm f/2.8L or Sigma Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xaa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 200mm f/2.8L II"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xab

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 300mm f/4L"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 400mm f/5.6L or Sigma Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xad

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 180mm Macro f/3.5L or Sigma Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xae

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 135mm f/2L or Other Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xaf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 400mm f/2.8L"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xb0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 24-85mm f/3.5-4.5 USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xb1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 300mm f/4L IS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xb2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 28-135mm f/3.5-5.6 IS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xb3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 24mm f/1.4L"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xb4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 35mm f/1.4L or Other Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xb5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 100-400mm f/4.5-5.6L IS + 1.4x or Sigma Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xb6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 100-400mm f/4.5-5.6L IS + 2x or Sigma Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xb7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 100-400mm f/4.5-5.6L IS or Sigma Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xb8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 400mm f/2.8L + 2x"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xb9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 600mm f/4L IS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 70-200mm f/4L"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xbb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 70-200mm f/4L + 1.4x"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xbc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 70-200mm f/4L + 2x"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xbd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 70-200mm f/4L + 2.8x"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xbe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 100mm f/2.8 Macro USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xbf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 400mm f/4 DO IS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xc1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 35-80mm f/4-5.6 USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xc2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 80-200mm f/4.5-5.6 USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xc3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 35-105mm f/4.5-5.6 USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xc4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 75-300mm f/4-5.6 USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xc5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 75-300mm f/4-5.6 IS USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xc6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 50mm f/1.4 USM or Zeiss Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xc7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 28-80mm f/3.5-5.6 USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 75-300mm f/4-5.6 USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xc9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 28-80mm f/3.5-5.6 USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 28-80mm f/3.5-5.6 USM IV"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xd0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 22-55mm f/4-5.6 USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xd1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 55-200mm f/4.5-5.6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xd2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 28-90mm f/4-5.6 USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xd3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 28-200mm f/3.5-5.6 USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xd4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 28-105mm f/4-5.6 USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xd5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 90-300mm f/4.5-5.6 USM or Tamron Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xd6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF-S 18-55mm f/3.5-5.6 USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xd7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 55-200mm f/4.5-5.6 II USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xd9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Tamron AF 18-270mm f/3.5-6.3 Di II VC PZD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 70-200mm f/2.8L IS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xe1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 70-200mm f/2.8L IS + 1.4x"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xe2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 70-200mm f/2.8L IS + 2x"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xe3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 70-200mm f/2.8L IS + 2.8x"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xe4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 28-105mm f/3.5-4.5 USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xe5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 16-35mm f/2.8L"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xe6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 24-70mm f/2.8L"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xe7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 17-40mm f/4L"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xe8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 70-300mm f/4.5-5.6 DO IS USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xe9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 28-300mm f/3.5-5.6L IS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF-S 17-85mm f/4-5.6 IS USM or Tokina Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xeb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF-S 10-22mm f/3.5-4.5 USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF-S 60mm f/2.8 Macro USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 24-105mm f/4L IS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 70-300mm f/4-5.6 IS USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 85mm f/1.2L II"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xf0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF-S 17-55mm f/2.8 IS USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xf1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 50mm f/1.2L"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xf2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 70-200mm f/4L IS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xf3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 70-200mm f/4L IS + 1.4x"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xf4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 70-200mm f/4L IS + 2x"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xf5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 70-200mm f/4L IS + 2.8x"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xf6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 16-35mm f/2.8L II"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xf7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 14mm f/2.8L II USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xf8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 200mm f/2L IS or Sigma Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xf9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 800mm f/5.6L IS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xfa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 24mm f/1.4L II or Sigma Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xfb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 70-200mm f/2.8L IS II USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xfc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 70-200mm f/2.8L IS II USM + 1.4x"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xfd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 70-200mm f/2.8L IS II USM + 2x"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xfe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 100mm f/2.8L Macro IS USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Sigma 24-105mm f/4 DG OS HSM | A or Other Sigma Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF-S 15-85mm f/3.5-5.6 IS USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 70-300mm f/4-5.6L IS USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 8-15mm f/4L Fisheye USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1eb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 300mm f/2.8L IS II USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 400mm f/2.8L IS II USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1ed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 500mm f/4L IS II USM or EF 24-105mm f4L IS USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1ee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 600mm f/4.0L IS II USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 24-70mm f/2.8L II USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1f0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 200-400mm f/4L IS USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1f3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 200-400mm f/4L IS USM + 1.4x"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1f6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 28mm f/2.8 IS USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1f7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 24mm f/2.8 IS USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 24-70mm f/4L IS USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1f9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 35mm f/2 IS USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1fa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 400mm f/4 DO IS II USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1fb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 16-35mm f/4L IS USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1fc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 11-24mm f/4L USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x2eb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 100-400mm f/4.5-5.6L IS II USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x2ee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 35mm f/1.4L II USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x102e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF-S 18-135mm f/3.5-5.6 IS STM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x102f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF-M 18-55mm f/3.5-5.6 IS STM or Tamron Lens"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1030

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 40mm f/2.8 STM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1031

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF-M 22mm f/2 STM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1032

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF-S 18-55mm f/3.5-5.6 IS STM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1033

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF-M 11-22mm f/4-5.6 IS STM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1034

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF-S 55-250mm f/4-5.6 IS STM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1035

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF-M 55-200mm f/4.5-6.3 IS STM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1036

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF-S 10-18mm f/4.5-5.6 IS STM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1038

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 24-105mm f/3.5-5.6 IS STM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x1039

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF-M 15-45mm f/3.5-6.3 IS STM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x103a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF-S 24mm f/2.8 STM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const/16 v1, 0x103c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF 50mm f/1.8 STM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const v1, 0x9030

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Canon EF-S 18-135mm f/3.5-5.6 IS USM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    sget-object v0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    const v1, 0xffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "N/A"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    return-void
.end method

.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;)V
    .locals 0
    .param p1, "directory"    # Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 43
    return-void
.end method

.method private decodeCanonEv(I)D
    .locals 6
    .param p1, "val"    # I

    .prologue
    .line 923
    const/4 v1, 0x1

    .line 924
    .local v1, "sign":I
    if-gez p1, :cond_0

    .line 926
    neg-int p1, p1

    .line 927
    const/4 v1, -0x1

    .line 930
    :cond_0
    and-int/lit8 v0, p1, 0x1f

    .line 931
    .local v0, "frac":I
    sub-int/2addr p1, v0

    .line 933
    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    .line 934
    const/16 v0, 0xa

    .line 938
    :cond_1
    :goto_0
    add-int v2, p1, v0

    mul-int/2addr v2, v1

    int-to-double v2, v2

    const-wide/high16 v4, 0x4040000000000000L    # 32.0

    div-double/2addr v2, v4

    return-wide v2

    .line 935
    :cond_2
    const/16 v2, 0x14

    if-ne v0, v2, :cond_1

    .line 936
    const/16 v0, 0x15

    goto :goto_0
.end method


# virtual methods
.method public getAESettingDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 815
    const v0, 0xc11f

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Normal AE"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "Exposure Compensation"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "AE Lock"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "AE Lock + Exposure Comp."

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "No AE"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAfPointSelectedDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 541
    const v0, 0xc113

    const/16 v1, 0x3000

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "None (MF)"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Auto selected"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Right"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Centre"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "Left"

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAfPointUsedDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 380
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;

    const v2, 0xc20e

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 381
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 382
    const/4 v1, 0x0

    .line 390
    :goto_0
    return-object v1

    .line 383
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_1

    .line 384
    const-string v1, "Right"

    goto :goto_0

    .line 385
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 386
    const-string v1, "Centre"

    goto :goto_0

    .line 387
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 388
    const-string v1, "Left"

    goto :goto_0

    .line 390
    :cond_3
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
.end method

.method public getColorToneDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 895
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;

    const v2, 0xc129

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 896
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 897
    const/4 v1, 0x0

    .line 899
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x7fff

    if-ne v1, v2, :cond_1

    const-string v1, "n/a"

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getContinuousDriveModeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 698
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;

    const v3, 0xc105

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v1

    .line 699
    .local v1, "value":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 700
    const/4 v2, 0x0

    .line 709
    :goto_0
    return-object v2

    .line 701
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 709
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 703
    :pswitch_0
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;

    const v3, 0xc102

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 704
    .local v0, "delay":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 705
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Single shot"

    goto :goto_0

    :cond_1
    const-string v2, "Single shot with self-timer"

    goto :goto_0

    .line 707
    .end local v0    # "delay":Ljava/lang/Integer;
    :cond_2
    :pswitch_1
    const-string v2, "Continuous"

    goto :goto_0

    .line 701
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getContrastDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 633
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;

    const v2, 0xc10d

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 634
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 635
    const/4 v1, 0x0

    .line 644
    :goto_0
    return-object v1

    .line 636
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 644
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

    .line 638
    :sswitch_0
    const-string v1, "Low"

    goto :goto_0

    .line 640
    :sswitch_1
    const-string v1, "Normal"

    goto :goto_0

    .line 642
    :sswitch_2
    const-string v1, "High"

    goto :goto_0

    .line 636
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0xffff -> :sswitch_0
    .end sparse-switch
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 49
    sparse-switch p1, :sswitch_data_0

    .line 161
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 51
    :sswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getSerialNumberDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :sswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getFlashActivityDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :sswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getFocusTypeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :sswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getDigitalZoomDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :sswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getRecordModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    :sswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getQualityDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :sswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getMacroModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :sswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getSelfTimerDelayDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    :sswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getFlashModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :sswitch_9
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getContinuousDriveModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :sswitch_a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getFocusMode1Description()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :sswitch_b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getImageSizeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    :sswitch_c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getEasyShootingModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :sswitch_d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getContrastDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    :sswitch_e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getSaturationDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 81
    :sswitch_f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getSharpnessDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 83
    :sswitch_10
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getIsoDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 85
    :sswitch_11
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getMeteringModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 87
    :sswitch_12
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getAfPointSelectedDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 89
    :sswitch_13
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getExposureModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 91
    :sswitch_14
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getLensTypeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 93
    :sswitch_15
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getLongFocalLengthDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    :sswitch_16
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getShortFocalLengthDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :sswitch_17
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getFocalUnitsPerMillimetreDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 99
    :sswitch_18
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getFlashDetailsDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 101
    :sswitch_19
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getFocusMode2Description()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 103
    :sswitch_1a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getWhiteBalanceDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 105
    :sswitch_1b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getAfPointUsedDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 107
    :sswitch_1c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getFlashBiasDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 109
    :sswitch_1d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getTagAfPointsInFocus()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 111
    :sswitch_1e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getMaxApertureDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 113
    :sswitch_1f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getMinApertureDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 115
    :sswitch_20
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getFocusContinuousDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 117
    :sswitch_21
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getAESettingDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 119
    :sswitch_22
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getDisplayApertureDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 121
    :sswitch_23
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getSpotMeteringModeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 123
    :sswitch_24
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getPhotoEffectDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 125
    :sswitch_25
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getManualFlashOutputDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 127
    :sswitch_26
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getColorToneDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 129
    :sswitch_27
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getSRawQualityDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 49
    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0xc101 -> :sswitch_6
        0xc102 -> :sswitch_7
        0xc103 -> :sswitch_5
        0xc104 -> :sswitch_8
        0xc105 -> :sswitch_9
        0xc107 -> :sswitch_a
        0xc109 -> :sswitch_4
        0xc10a -> :sswitch_b
        0xc10b -> :sswitch_c
        0xc10c -> :sswitch_3
        0xc10d -> :sswitch_d
        0xc10e -> :sswitch_e
        0xc10f -> :sswitch_f
        0xc110 -> :sswitch_10
        0xc111 -> :sswitch_11
        0xc112 -> :sswitch_2
        0xc113 -> :sswitch_12
        0xc114 -> :sswitch_13
        0xc116 -> :sswitch_14
        0xc117 -> :sswitch_15
        0xc118 -> :sswitch_16
        0xc119 -> :sswitch_17
        0xc11a -> :sswitch_1e
        0xc11b -> :sswitch_1f
        0xc11c -> :sswitch_1
        0xc11d -> :sswitch_18
        0xc11e -> :sswitch_20
        0xc11f -> :sswitch_21
        0xc120 -> :sswitch_19
        0xc121 -> :sswitch_22
        0xc125 -> :sswitch_23
        0xc126 -> :sswitch_24
        0xc127 -> :sswitch_25
        0xc129 -> :sswitch_26
        0xc12d -> :sswitch_27
        0xc207 -> :sswitch_1a
        0xc20e -> :sswitch_1b
        0xc20f -> :sswitch_1c
        0xd20a -> :sswitch_1d
    .end sparse-switch
.end method

.method public getDigitalZoomDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 770
    const v0, 0xc10c

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "No digital zoom"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "2x"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "4x"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayApertureDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 822
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;

    const v2, 0xc121

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 823
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 824
    const/4 v1, 0x0

    .line 828
    :goto_0
    return-object v1

    .line 826
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0xffff

    if-ne v1, v2, :cond_1

    .line 827
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 828
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getFStopDescription(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getEasyShootingModeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 651
    const v0, 0xc10b

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Full auto"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Manual"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Landscape"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Fast shutter"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Slow shutter"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Night"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "B&W"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Sepia"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "Portrait"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "Sports"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "Macro / Closeup"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "Pan focus"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExposureModeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 494
    const v0, 0xc114

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Easy shooting"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Program"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Tv-priority"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Av-priority"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Manual"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "A-DEP"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlashActivityDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 802
    const v0, 0xc11c

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Flash did not fire"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Flash fired"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlashBiasDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 357
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;

    const v3, 0xc20f

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v1

    .line 359
    .local v1, "value":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 360
    const/4 v2, 0x0

    .line 374
    :goto_0
    return-object v2

    .line 362
    :cond_0
    const/4 v0, 0x0

    .line 363
    .local v0, "isNegative":Z
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0xf000

    if-le v2, v3, :cond_1

    .line 364
    const/4 v0, 0x1

    .line 365
    const v2, 0xffff

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 366
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 374
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_2

    const-string v2, "-"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42000000    # 32.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " EV"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v2, ""

    goto :goto_1
.end method

.method public getFlashDetailsDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 440
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;

    const v2, 0xc11d

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 441
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 442
    const/4 v1, 0x0

    .line 455
    :goto_0
    return-object v1

    .line 443
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shr-int/lit8 v1, v1, 0xe

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 444
    const-string v1, "External E-TTL"

    goto :goto_0

    .line 446
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shr-int/lit8 v1, v1, 0xd

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 447
    const-string v1, "Internal flash"

    goto :goto_0

    .line 449
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shr-int/lit8 v1, v1, 0xb

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 450
    const-string v1, "FP sync used"

    goto :goto_0

    .line 452
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 453
    const-string v1, "FP sync enabled"

    goto :goto_0

    .line 455
    :cond_4
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
.end method

.method public getFlashModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 715
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;

    const v2, 0xc104

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 716
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 717
    const/4 v1, 0x0

    .line 737
    :goto_0
    return-object v1

    .line 718
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 737
    :pswitch_0
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

    .line 720
    :pswitch_1
    const-string v1, "No flash fired"

    goto :goto_0

    .line 722
    :pswitch_2
    const-string v1, "Auto"

    goto :goto_0

    .line 724
    :pswitch_3
    const-string v1, "On"

    goto :goto_0

    .line 726
    :pswitch_4
    const-string v1, "Red-eye reduction"

    goto :goto_0

    .line 728
    :pswitch_5
    const-string v1, "Slow-synchro"

    goto :goto_0

    .line 730
    :pswitch_6
    const-string v1, "Auto and red-eye reduction"

    goto :goto_0

    .line 732
    :pswitch_7
    const-string v1, "On and red-eye reduction"

    goto :goto_0

    .line 735
    :pswitch_8
    const-string v1, "External flash"

    goto :goto_0

    .line 718
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public getFocalUnitsPerMillimetreDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 461
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;

    const v2, 0xc119

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 462
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 463
    const/4 v1, 0x0

    .line 467
    :goto_0
    return-object v1

    .line 464
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    .line 465
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 467
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public getFocusContinuousDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 808
    const v0, 0xc11e

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Single"

    aput-object v2, v1, v5

    const/4 v2, 0x1

    const-string v3, "Continuous"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v4, v1, v2

    const/4 v2, 0x3

    aput-object v4, v1, v2

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    aput-object v4, v1, v2

    const/4 v2, 0x7

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-string v3, "Manual"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v5, v1}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusMode1Description()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 682
    const v0, 0xc107

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "One-shot"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "AI Servo"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "AI Focus"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Manual Focus"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Single"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Continuous"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Manual Focus"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusMode2Description()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 434
    const v0, 0xc120

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Single"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Continuous"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusTypeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 782
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;

    const v2, 0xc112

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 783
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 784
    const/4 v1, 0x0

    .line 795
    :goto_0
    return-object v1

    .line 785
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 795
    :pswitch_0
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

    .line 787
    :pswitch_1
    const-string v1, "Manual"

    goto :goto_0

    .line 789
    :pswitch_2
    const-string v1, "Auto"

    goto :goto_0

    .line 791
    :pswitch_3
    const-string v1, "Close-up (Macro)"

    goto :goto_0

    .line 793
    :pswitch_4
    const-string v1, "Locked (Pan Mode)"

    goto :goto_0

    .line 785
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getImageSizeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 671
    const v0, 0xc10a

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Large"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Medium"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Small"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsoDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 567
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;

    const v3, 0xc110

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v1

    .line 568
    .local v1, "value":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 569
    const/4 v2, 0x0

    .line 590
    :goto_0
    return-object v2

    .line 572
    :cond_0
    const/16 v0, 0x4000

    .line 573
    .local v0, "canonMask":I
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit16 v3, v3, -0x4001

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 576
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 578
    :sswitch_0
    const-string v2, "Not specified (see ISOSpeedRatings tag)"

    goto :goto_0

    .line 580
    :sswitch_1
    const-string v2, "Auto"

    goto :goto_0

    .line 582
    :sswitch_2
    const-string v2, "50"

    goto :goto_0

    .line 584
    :sswitch_3
    const-string v2, "100"

    goto :goto_0

    .line 586
    :sswitch_4
    const-string v2, "200"

    goto :goto_0

    .line 588
    :sswitch_5
    const-string v2, "400"

    goto :goto_0

    .line 576
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xf -> :sswitch_1
        0x10 -> :sswitch_2
        0x11 -> :sswitch_3
        0x12 -> :sswitch_4
        0x13 -> :sswitch_5
    .end sparse-switch
.end method

.method public getLensTypeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 507
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;

    const v2, 0xc116

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 508
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 509
    const/4 v1, 0x0

    .line 511
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_lensTypeById:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "Unknown (%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getLongFocalLengthDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 484
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;

    const v3, 0xc117

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v1

    .line 485
    .local v1, "value":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 486
    const/4 v2, 0x0

    .line 488
    :goto_0
    return-object v2

    .line 487
    :cond_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getFocalUnitsPerMillimetreDescription()Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "units":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getMacroModeDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 758
    const v0, 0xc101

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Macro"

    aput-object v3, v1, v2

    const-string v2, "Normal"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManualFlashOutputDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 871
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;

    const v2, 0xc127

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 872
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 873
    const/4 v1, 0x0

    .line 888
    :goto_0
    return-object v1

    .line 875
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 888
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

    .line 878
    :sswitch_0
    const-string v1, "n/a"

    goto :goto_0

    .line 880
    :sswitch_1
    const-string v1, "Full"

    goto :goto_0

    .line 882
    :sswitch_2
    const-string v1, "Medium"

    goto :goto_0

    .line 884
    :sswitch_3
    const-string v1, "Low"

    goto :goto_0

    .line 886
    :sswitch_4
    const-string v1, "n/a"

    goto :goto_0

    .line 875
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x500 -> :sswitch_1
        0x502 -> :sswitch_2
        0x504 -> :sswitch_3
        0x7fff -> :sswitch_4
    .end sparse-switch
.end method

.method public getMaxApertureDescription()Ljava/lang/String;
    .locals 8
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 519
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;

    const v2, 0xc11a

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 520
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 521
    const/4 v1, 0x0

    .line 524
    :goto_0
    return-object v1

    .line 522
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x200

    if-le v1, v2, :cond_1

    .line 523
    const-string v1, "Unknown (%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 524
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->decodeCanonEv(I)D

    move-result-wide v2

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getFStopDescription(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getMeteringModeDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 555
    const v0, 0xc111

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Evaluative"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Partial"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Centre weighted"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinApertureDescription()Ljava/lang/String;
    .locals 8
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 530
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;

    const v2, 0xc11b

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 531
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 532
    const/4 v1, 0x0

    .line 535
    :goto_0
    return-object v1

    .line 533
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x200

    if-le v1, v2, :cond_1

    .line 534
    const-string v1, "Unknown (%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 535
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->decodeCanonEv(I)D

    move-result-wide v2

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getFStopDescription(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPhotoEffectDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 841
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;

    const v2, 0xc126

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 842
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 843
    const/4 v1, 0x0

    .line 864
    :goto_0
    return-object v1

    .line 845
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 864
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

    .line 848
    :sswitch_0
    const-string v1, "Off"

    goto :goto_0

    .line 850
    :sswitch_1
    const-string v1, "Vivid"

    goto :goto_0

    .line 852
    :sswitch_2
    const-string v1, "Neutral"

    goto :goto_0

    .line 854
    :sswitch_3
    const-string v1, "Smooth"

    goto :goto_0

    .line 856
    :sswitch_4
    const-string v1, "Sepia"

    goto :goto_0

    .line 858
    :sswitch_5
    const-string v1, "B&W"

    goto :goto_0

    .line 860
    :sswitch_6
    const-string v1, "Custom"

    goto :goto_0

    .line 862
    :sswitch_7
    const-string v1, "My Color Data"

    goto :goto_0

    .line 845
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x64 -> :sswitch_7
    .end sparse-switch
.end method

.method public getQualityDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 764
    const v0, 0xc103

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Normal"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Fine"

    aput-object v3, v1, v2

    const/4 v2, 0x0

    aput-object v2, v1, v4

    const/4 v2, 0x3

    const-string v3, "Superfine"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecordModeDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 776
    const v0, 0xc109

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "JPEG"

    aput-object v3, v1, v2

    const-string v2, "CRW+THM"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "AVI+THM"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "TIF"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "TIF+JPEG"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "CR2"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "CR2+JPEG"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "MOV"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "MP4"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSRawQualityDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 905
    const v0, 0xc12d

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "n/a"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "sRAW1 (mRAW)"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "sRAW2 (sRAW)"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSaturationDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 615
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;

    const v2, 0xc10e

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 616
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 617
    const/4 v1, 0x0

    .line 626
    :goto_0
    return-object v1

    .line 618
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 626
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

    .line 620
    :sswitch_0
    const-string v1, "Low"

    goto :goto_0

    .line 622
    :sswitch_1
    const-string v1, "Normal"

    goto :goto_0

    .line 624
    :sswitch_2
    const-string v1, "High"

    goto :goto_0

    .line 618
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0xffff -> :sswitch_0
    .end sparse-switch
.end method

.method public getSelfTimerDelayDescription()Ljava/lang/String;
    .locals 8
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 744
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;

    const v3, 0xc102

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v1

    .line 745
    .local v1, "value":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 746
    const/4 v2, 0x0

    .line 751
    :goto_0
    return-object v2

    .line 747
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 748
    const-string v2, "Self timer not used"

    goto :goto_0

    .line 750
    :cond_1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "0.##"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 751
    .local v0, "format":Ljava/text/DecimalFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v4, v3

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getSerialNumberDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 169
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 170
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 171
    const/4 v1, 0x0

    .line 172
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "%04X%05d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSharpnessDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 597
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;

    const v2, 0xc10f

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 598
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 599
    const/4 v1, 0x0

    .line 608
    :goto_0
    return-object v1

    .line 600
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 608
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

    .line 602
    :sswitch_0
    const-string v1, "Low"

    goto :goto_0

    .line 604
    :sswitch_1
    const-string v1, "Normal"

    goto :goto_0

    .line 606
    :sswitch_2
    const-string v1, "High"

    goto :goto_0

    .line 600
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0xffff -> :sswitch_0
    .end sparse-switch
.end method

.method public getShortFocalLengthDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 474
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;

    const v3, 0xc118

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v1

    .line 475
    .local v1, "value":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 476
    const/4 v2, 0x0

    .line 478
    :goto_0
    return-object v2

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getFocalUnitsPerMillimetreDescription()Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "units":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getSpotMeteringModeDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 834
    const v0, 0xc125

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Center"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "AF Point"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTagAfPointsInFocus()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 397
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;

    const v4, 0xd20a

    invoke-virtual {v3, v4}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v2

    .line 398
    .local v2, "value":Ljava/lang/Integer;
    if-nez v2, :cond_0

    .line 399
    const/4 v3, 0x0

    .line 413
    :goto_0
    return-object v3

    .line 401
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v3, 0x10

    if-ge v0, v3, :cond_3

    .line 405
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    shl-int/2addr v4, v0

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 407
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 408
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 409
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 403
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 413
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "None"

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getWhiteBalanceDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 419
    const v0, 0xc207

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Auto"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Sunny"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Cloudy"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Tungsten"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Florescent"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Flash"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Custom"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/CanonMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
