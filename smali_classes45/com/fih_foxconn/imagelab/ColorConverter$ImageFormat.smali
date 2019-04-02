.class public final enum Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;
.super Ljava/lang/Enum;
.source "ColorConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fih_foxconn/imagelab/ColorConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

.field public static final enum ARGB:Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

.field public static final enum NV12:Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

.field public static final enum NV21:Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

.field public static final enum RGB:Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

.field public static final enum YUV:Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;


# instance fields
.field private final formatName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    const-string v1, "NV21"

    const-string v2, "NV21"

    invoke-direct {v0, v1, v3, v2}, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;->NV21:Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    .line 15
    new-instance v0, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    const-string v1, "NV12"

    const-string v2, "NV12"

    invoke-direct {v0, v1, v4, v2}, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;->NV12:Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    .line 16
    new-instance v0, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    const-string v1, "YUV"

    const-string v2, "YUV"

    invoke-direct {v0, v1, v5, v2}, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;->YUV:Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    .line 17
    new-instance v0, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    const-string v1, "RGB"

    const-string v2, "RGB"

    invoke-direct {v0, v1, v6, v2}, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;->RGB:Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    .line 18
    new-instance v0, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    const-string v1, "ARGB"

    const-string v2, "ARGB"

    invoke-direct {v0, v1, v7, v2}, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;->ARGB:Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    .line 13
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    sget-object v1, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;->NV21:Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;->NV12:Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;->YUV:Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;->RGB:Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;->ARGB:Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    aput-object v1, v0, v7

    sput-object v0, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;->$VALUES:[Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;->formatName:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    return-object v0
.end method

.method public static values()[Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;->$VALUES:[Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    invoke-virtual {v0}, [Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;

    return-object v0
.end method


# virtual methods
.method public getFormatName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/ColorConverter$ImageFormat;->formatName:Ljava/lang/String;

    return-object v0
.end method
