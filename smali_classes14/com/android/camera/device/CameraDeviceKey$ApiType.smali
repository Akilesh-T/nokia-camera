.class public final enum Lcom/android/camera/device/CameraDeviceKey$ApiType;
.super Ljava/lang/Enum;
.source "CameraDeviceKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/device/CameraDeviceKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApiType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/device/CameraDeviceKey$ApiType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/device/CameraDeviceKey$ApiType;

.field public static final enum CAMERA_API1:Lcom/android/camera/device/CameraDeviceKey$ApiType;

.field public static final enum CAMERA_API2:Lcom/android/camera/device/CameraDeviceKey$ApiType;

.field public static final enum CAMERA_API_PORTABILITY_API1:Lcom/android/camera/device/CameraDeviceKey$ApiType;

.field public static final enum CAMERA_API_PORTABILITY_API2:Lcom/android/camera/device/CameraDeviceKey$ApiType;

.field public static final enum CAMERA_API_PORTABILITY_AUTO:Lcom/android/camera/device/CameraDeviceKey$ApiType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/android/camera/device/CameraDeviceKey$ApiType;

    const-string v1, "CAMERA_API1"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/device/CameraDeviceKey$ApiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/device/CameraDeviceKey$ApiType;->CAMERA_API1:Lcom/android/camera/device/CameraDeviceKey$ApiType;

    .line 39
    new-instance v0, Lcom/android/camera/device/CameraDeviceKey$ApiType;

    const-string v1, "CAMERA_API2"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/device/CameraDeviceKey$ApiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/device/CameraDeviceKey$ApiType;->CAMERA_API2:Lcom/android/camera/device/CameraDeviceKey$ApiType;

    .line 40
    new-instance v0, Lcom/android/camera/device/CameraDeviceKey$ApiType;

    const-string v1, "CAMERA_API_PORTABILITY_AUTO"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/device/CameraDeviceKey$ApiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/device/CameraDeviceKey$ApiType;->CAMERA_API_PORTABILITY_AUTO:Lcom/android/camera/device/CameraDeviceKey$ApiType;

    .line 41
    new-instance v0, Lcom/android/camera/device/CameraDeviceKey$ApiType;

    const-string v1, "CAMERA_API_PORTABILITY_API1"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/device/CameraDeviceKey$ApiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/device/CameraDeviceKey$ApiType;->CAMERA_API_PORTABILITY_API1:Lcom/android/camera/device/CameraDeviceKey$ApiType;

    .line 42
    new-instance v0, Lcom/android/camera/device/CameraDeviceKey$ApiType;

    const-string v1, "CAMERA_API_PORTABILITY_API2"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/device/CameraDeviceKey$ApiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/device/CameraDeviceKey$ApiType;->CAMERA_API_PORTABILITY_API2:Lcom/android/camera/device/CameraDeviceKey$ApiType;

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/device/CameraDeviceKey$ApiType;

    sget-object v1, Lcom/android/camera/device/CameraDeviceKey$ApiType;->CAMERA_API1:Lcom/android/camera/device/CameraDeviceKey$ApiType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/device/CameraDeviceKey$ApiType;->CAMERA_API2:Lcom/android/camera/device/CameraDeviceKey$ApiType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/device/CameraDeviceKey$ApiType;->CAMERA_API_PORTABILITY_AUTO:Lcom/android/camera/device/CameraDeviceKey$ApiType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/device/CameraDeviceKey$ApiType;->CAMERA_API_PORTABILITY_API1:Lcom/android/camera/device/CameraDeviceKey$ApiType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/device/CameraDeviceKey$ApiType;->CAMERA_API_PORTABILITY_API2:Lcom/android/camera/device/CameraDeviceKey$ApiType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/camera/device/CameraDeviceKey$ApiType;->$VALUES:[Lcom/android/camera/device/CameraDeviceKey$ApiType;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/device/CameraDeviceKey$ApiType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/android/camera/device/CameraDeviceKey$ApiType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/device/CameraDeviceKey$ApiType;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/device/CameraDeviceKey$ApiType;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/camera/device/CameraDeviceKey$ApiType;->$VALUES:[Lcom/android/camera/device/CameraDeviceKey$ApiType;

    invoke-virtual {v0}, [Lcom/android/camera/device/CameraDeviceKey$ApiType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/device/CameraDeviceKey$ApiType;

    return-object v0
.end method
