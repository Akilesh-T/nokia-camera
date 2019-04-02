.class final enum Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;
.super Ljava/lang/Enum;
.source "OneCameraZslImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/OneCameraZslImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ReadyStateRequirement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;

.field public static final enum CAPTURE_MANAGER_READY:Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;

.field public static final enum CAPTURE_NOT_IN_PROGRESS:Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 226
    new-instance v0, Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;

    const-string v1, "CAPTURE_MANAGER_READY"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;->CAPTURE_MANAGER_READY:Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;

    new-instance v0, Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;

    const-string v1, "CAPTURE_NOT_IN_PROGRESS"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;->CAPTURE_NOT_IN_PROGRESS:Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;

    .line 225
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;

    sget-object v1, Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;->CAPTURE_MANAGER_READY:Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;->CAPTURE_NOT_IN_PROGRESS:Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;->$VALUES:[Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;

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
    .line 225
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 225
    const-class v0, Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;
    .locals 1

    .prologue
    .line 225
    sget-object v0, Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;->$VALUES:[Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;

    invoke-virtual {v0}, [Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;

    return-object v0
.end method
