.class public final enum Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;
.super Ljava/lang/Enum;
.source "SceneDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/photo/SceneDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SceneMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

.field public static final enum AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

.field public static final enum DENOISE:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

.field public static final enum HDR:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

.field public static final enum LOWLIGHT:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

.field public static final enum SR:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    new-instance v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    const-string v1, "HDR"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->HDR:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    new-instance v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    const-string v1, "DENOISE"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->DENOISE:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    new-instance v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    const-string v1, "LOWLIGHT"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->LOWLIGHT:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    new-instance v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    const-string v1, "SR"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->SR:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    .line 11
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    sget-object v1, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->HDR:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->DENOISE:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->LOWLIGHT:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->SR:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->$VALUES:[Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->$VALUES:[Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    invoke-virtual {v0}, [Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    return-object v0
.end method
