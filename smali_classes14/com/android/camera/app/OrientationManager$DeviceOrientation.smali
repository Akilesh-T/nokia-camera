.class public final enum Lcom/android/camera/app/OrientationManager$DeviceOrientation;
.super Ljava/lang/Enum;
.source "OrientationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/OrientationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/app/OrientationManager$DeviceOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/app/OrientationManager$DeviceOrientation;

.field public static final enum CLOCKWISE_0:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

.field public static final enum CLOCKWISE_180:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

.field public static final enum CLOCKWISE_270:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

.field public static final enum CLOCKWISE_90:Lcom/android/camera/app/OrientationManager$DeviceOrientation;


# instance fields
.field private final mDegrees:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    const-string v1, "CLOCKWISE_0"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_0:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 21
    new-instance v0, Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    const-string v1, "CLOCKWISE_90"

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v4, v2}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_90:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 22
    new-instance v0, Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    const-string v1, "CLOCKWISE_180"

    const/16 v2, 0xb4

    invoke-direct {v0, v1, v5, v2}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_180:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 23
    new-instance v0, Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    const-string v1, "CLOCKWISE_270"

    const/16 v2, 0x10e

    invoke-direct {v0, v1, v6, v2}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_270:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    sget-object v1, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_0:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_90:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_180:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_270:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->$VALUES:[Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "degrees"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->mDegrees:I

    .line 29
    return-void
.end method

.method public static from(I)Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .locals 4
    .param p0, "degrees"    # I

    .prologue
    const/16 v3, 0x87

    const/16 v2, 0x2d

    .line 45
    sparse-switch p0, :sswitch_data_0

    .line 58
    div-int/lit16 v1, p0, 0x168

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x168

    add-int/lit16 v1, v1, 0x168

    add-int/2addr v1, p0

    rem-int/lit16 v0, v1, 0x168

    .line 59
    .local v0, "normalizedDegrees":I
    const/16 v1, 0x13b

    if-gt v0, v1, :cond_0

    if-gt v0, v2, :cond_1

    .line 60
    :cond_0
    sget-object v1, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_0:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 66
    .end local v0    # "normalizedDegrees":I
    :goto_0
    return-object v1

    .line 48
    :sswitch_0
    sget-object v1, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_0:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    goto :goto_0

    .line 50
    :sswitch_1
    sget-object v1, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_0:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    goto :goto_0

    .line 52
    :sswitch_2
    sget-object v1, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_90:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    goto :goto_0

    .line 54
    :sswitch_3
    sget-object v1, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_180:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    goto :goto_0

    .line 56
    :sswitch_4
    sget-object v1, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_270:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    goto :goto_0

    .line 61
    .restart local v0    # "normalizedDegrees":I
    :cond_1
    if-le v0, v2, :cond_2

    if-gt v0, v3, :cond_2

    .line 62
    sget-object v1, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_90:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    goto :goto_0

    .line 63
    :cond_2
    if-le v0, v3, :cond_3

    const/16 v1, 0xe1

    if-gt v0, v1, :cond_3

    .line 64
    sget-object v1, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_180:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    goto :goto_0

    .line 66
    :cond_3
    sget-object v1, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_270:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    goto :goto_0

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_3
        0x10e -> :sswitch_4
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->$VALUES:[Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    invoke-virtual {v0}, [Lcom/android/camera/app/OrientationManager$DeviceOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    return-object v0
.end method


# virtual methods
.method public getDegrees()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->mDegrees:I

    return v0
.end method
