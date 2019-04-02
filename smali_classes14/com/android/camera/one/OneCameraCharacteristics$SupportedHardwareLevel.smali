.class public final enum Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;
.super Ljava/lang/Enum;
.source "OneCameraCharacteristics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/OneCameraCharacteristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SupportedHardwareLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

.field public static final enum FULL:Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

.field public static final enum LEGACY:Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

.field public static final enum LEVEL_3:Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

.field public static final enum LIMITED:Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    const-string v1, "LEVEL_3"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->LEVEL_3:Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    new-instance v0, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->FULL:Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    new-instance v0, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    const-string v1, "LIMITED"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->LIMITED:Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    new-instance v0, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    const-string v1, "LEGACY"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->LEGACY:Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->LEVEL_3:Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->FULL:Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->LIMITED:Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->LEGACY:Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->$VALUES:[Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->$VALUES:[Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    invoke-virtual {v0}, [Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/OneCameraCharacteristics$SupportedHardwareLevel;

    return-object v0
.end method
