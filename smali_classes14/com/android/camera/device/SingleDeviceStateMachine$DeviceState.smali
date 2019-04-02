.class final enum Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;
.super Ljava/lang/Enum;
.source "SingleDeviceStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/device/SingleDeviceStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DeviceState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

.field public static final enum CLOSED:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

.field public static final enum CLOSING:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

.field public static final enum OPENED:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

.field public static final enum OPENING:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    const-string v1, "OPENING"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;->OPENING:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    .line 58
    new-instance v0, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    const-string v1, "OPENED"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;->OPENED:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    .line 59
    new-instance v0, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    const-string v1, "CLOSING"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;->CLOSING:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    .line 60
    new-instance v0, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;->CLOSED:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    sget-object v1, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;->OPENING:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;->OPENED:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;->CLOSING:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;->CLOSED:Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;->$VALUES:[Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

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
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    const-class v0, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;->$VALUES:[Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    invoke-virtual {v0}, [Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/device/SingleDeviceStateMachine$DeviceState;

    return-object v0
.end method
