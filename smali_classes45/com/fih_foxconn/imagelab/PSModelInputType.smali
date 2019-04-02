.class public final enum Lcom/fih_foxconn/imagelab/PSModelInputType;
.super Ljava/lang/Enum;
.source "PSModelInputType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fih_foxconn/imagelab/PSModelInputType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fih_foxconn/imagelab/PSModelInputType;

.field public static final enum RGB:Lcom/fih_foxconn/imagelab/PSModelInputType;

.field public static final enum RGBM:Lcom/fih_foxconn/imagelab/PSModelInputType;


# instance fields
.field private numOfChannels:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/fih_foxconn/imagelab/PSModelInputType;

    const-string v1, "RGBM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/fih_foxconn/imagelab/PSModelInputType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fih_foxconn/imagelab/PSModelInputType;->RGBM:Lcom/fih_foxconn/imagelab/PSModelInputType;

    new-instance v0, Lcom/fih_foxconn/imagelab/PSModelInputType;

    const-string v1, "RGB"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lcom/fih_foxconn/imagelab/PSModelInputType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fih_foxconn/imagelab/PSModelInputType;->RGB:Lcom/fih_foxconn/imagelab/PSModelInputType;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fih_foxconn/imagelab/PSModelInputType;

    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelInputType;->RGBM:Lcom/fih_foxconn/imagelab/PSModelInputType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelInputType;->RGB:Lcom/fih_foxconn/imagelab/PSModelInputType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fih_foxconn/imagelab/PSModelInputType;->$VALUES:[Lcom/fih_foxconn/imagelab/PSModelInputType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "numOfChannels"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput p3, p0, Lcom/fih_foxconn/imagelab/PSModelInputType;->numOfChannels:I

    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fih_foxconn/imagelab/PSModelInputType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/fih_foxconn/imagelab/PSModelInputType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fih_foxconn/imagelab/PSModelInputType;

    return-object v0
.end method

.method public static values()[Lcom/fih_foxconn/imagelab/PSModelInputType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelInputType;->$VALUES:[Lcom/fih_foxconn/imagelab/PSModelInputType;

    invoke-virtual {v0}, [Lcom/fih_foxconn/imagelab/PSModelInputType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fih_foxconn/imagelab/PSModelInputType;

    return-object v0
.end method


# virtual methods
.method public getNumOfChannels()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/fih_foxconn/imagelab/PSModelInputType;->numOfChannels:I

    return v0
.end method
