.class public final enum Lcom/android/camera/one/CameraType;
.super Ljava/lang/Enum;
.source "CameraType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/CameraType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/one/CameraType;

.field public static final enum BAYER:Lcom/android/camera/one/CameraType;

.field public static final enum MONO:Lcom/android/camera/one/CameraType;


# instance fields
.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/android/camera/one/CameraType;

    const-string v1, "BAYER"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/camera/one/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    new-instance v0, Lcom/android/camera/one/CameraType;

    const-string v1, "MONO"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/camera/one/CameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/one/CameraType;->MONO:Lcom/android/camera/one/CameraType;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/one/CameraType;

    sget-object v1, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/one/CameraType;->MONO:Lcom/android/camera/one/CameraType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/camera/one/CameraType;->$VALUES:[Lcom/android/camera/one/CameraType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/android/camera/one/CameraType;->mType:I

    .line 14
    return-void
.end method

.method public static fromType(I)Lcom/android/camera/one/CameraType;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 21
    packed-switch p0, :pswitch_data_0

    .line 27
    sget-object v0, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    :goto_0
    return-object v0

    .line 23
    :pswitch_0
    sget-object v0, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    goto :goto_0

    .line 25
    :pswitch_1
    sget-object v0, Lcom/android/camera/one/CameraType;->MONO:Lcom/android/camera/one/CameraType;

    goto :goto_0

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/one/CameraType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/android/camera/one/CameraType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/CameraType;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/one/CameraType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/android/camera/one/CameraType;->$VALUES:[Lcom/android/camera/one/CameraType;

    invoke-virtual {v0}, [Lcom/android/camera/one/CameraType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/CameraType;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/android/camera/one/CameraType;->mType:I

    return v0
.end method
