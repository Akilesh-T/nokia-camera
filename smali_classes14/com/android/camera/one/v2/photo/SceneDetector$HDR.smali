.class public final enum Lcom/android/camera/one/v2/photo/SceneDetector$HDR;
.super Ljava/lang/Enum;
.source "SceneDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/photo/SceneDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HDR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/v2/photo/SceneDetector$HDR;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

.field public static final enum AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

.field public static final enum OFF:Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

.field public static final enum ON:Lcom/android/camera/one/v2/photo/SceneDetector$HDR;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/photo/SceneDetector$HDR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$HDR;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

    new-instance v0, Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/one/v2/photo/SceneDetector$HDR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$HDR;->OFF:Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

    new-instance v0, Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

    const-string v1, "ON"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/one/v2/photo/SceneDetector$HDR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$HDR;->ON:Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

    sget-object v1, Lcom/android/camera/one/v2/photo/SceneDetector$HDR;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/one/v2/photo/SceneDetector$HDR;->OFF:Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/one/v2/photo/SceneDetector$HDR;->ON:Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$HDR;->$VALUES:[Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/one/v2/photo/SceneDetector$HDR;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/one/v2/photo/SceneDetector$HDR;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$HDR;->$VALUES:[Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

    invoke-virtual {v0}, [Lcom/android/camera/one/v2/photo/SceneDetector$HDR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/v2/photo/SceneDetector$HDR;

    return-object v0
.end method
