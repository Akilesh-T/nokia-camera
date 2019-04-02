.class public final enum Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;
.super Ljava/lang/Enum;
.source "SceneDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/photo/SceneDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SceneModeExif"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

.field public static final enum AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

.field public static final enum BEAUTY:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

.field public static final enum DENOISE:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

.field public static final enum HDR:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

.field public static final enum LOWLIGHT:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

.field public static final enum SR:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    new-instance v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    const-string v1, "HDR"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->HDR:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    new-instance v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    const-string v1, "DENOISE"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->DENOISE:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    new-instance v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    const-string v1, "LOWLIGHT"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->LOWLIGHT:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    new-instance v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    const-string v1, "BEAUTY"

    invoke-direct {v0, v1, v7}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->BEAUTY:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    new-instance v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    const-string v1, "SR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->SR:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    sget-object v1, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->HDR:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->DENOISE:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->LOWLIGHT:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->BEAUTY:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->SR:Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->$VALUES:[Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->$VALUES:[Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    invoke-virtual {v0}, [Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/v2/photo/SceneDetector$SceneModeExif;

    return-object v0
.end method
