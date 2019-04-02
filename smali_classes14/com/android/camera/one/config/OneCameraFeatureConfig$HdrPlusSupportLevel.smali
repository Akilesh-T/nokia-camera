.class public final enum Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;
.super Ljava/lang/Enum;
.source "OneCameraFeatureConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/config/OneCameraFeatureConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HdrPlusSupportLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

.field public static final enum FULL:Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

.field public static final enum LEGACY:Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

.field public static final enum NONE:Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-instance v0, Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;->NONE:Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

    .line 79
    new-instance v0, Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

    const-string v1, "LEGACY"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;->LEGACY:Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

    .line 81
    new-instance v0, Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;->FULL:Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

    sget-object v1, Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;->NONE:Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;->LEGACY:Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;->FULL:Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;->$VALUES:[Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    const-class v0, Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;->$VALUES:[Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

    invoke-virtual {v0}, [Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/one/config/OneCameraFeatureConfig$HdrPlusSupportLevel;

    return-object v0
.end method
