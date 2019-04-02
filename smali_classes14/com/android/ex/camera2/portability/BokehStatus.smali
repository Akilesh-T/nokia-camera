.class public final enum Lcom/android/ex/camera2/portability/BokehStatus;
.super Ljava/lang/Enum;
.source "BokehStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/ex/camera2/portability/BokehStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/ex/camera2/portability/BokehStatus;

.field public static final enum DEPTH_EFFECT_SUCCESS:Lcom/android/ex/camera2/portability/BokehStatus;

.field public static final enum LOW_LIGHT:Lcom/android/ex/camera2/portability/BokehStatus;

.field public static final enum NO_DEPTH_EFFECT:Lcom/android/ex/camera2/portability/BokehStatus;

.field public static final enum SUBJECT_NOT_FOUND:Lcom/android/ex/camera2/portability/BokehStatus;

.field public static final enum TOO_FAR:Lcom/android/ex/camera2/portability/BokehStatus;

.field public static final enum TOO_NEAR:Lcom/android/ex/camera2/portability/BokehStatus;

.field public static final enum TOUCH_TO_FOCUS:Lcom/android/ex/camera2/portability/BokehStatus;

.field public static final enum UNKNOWN:Lcom/android/ex/camera2/portability/BokehStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/android/ex/camera2/portability/BokehStatus;

    const-string v1, "NO_DEPTH_EFFECT"

    invoke-direct {v0, v1, v3}, Lcom/android/ex/camera2/portability/BokehStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/BokehStatus;->NO_DEPTH_EFFECT:Lcom/android/ex/camera2/portability/BokehStatus;

    new-instance v0, Lcom/android/ex/camera2/portability/BokehStatus;

    const-string v1, "DEPTH_EFFECT_SUCCESS"

    invoke-direct {v0, v1, v4}, Lcom/android/ex/camera2/portability/BokehStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/BokehStatus;->DEPTH_EFFECT_SUCCESS:Lcom/android/ex/camera2/portability/BokehStatus;

    new-instance v0, Lcom/android/ex/camera2/portability/BokehStatus;

    const-string v1, "TOO_NEAR"

    invoke-direct {v0, v1, v5}, Lcom/android/ex/camera2/portability/BokehStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/BokehStatus;->TOO_NEAR:Lcom/android/ex/camera2/portability/BokehStatus;

    new-instance v0, Lcom/android/ex/camera2/portability/BokehStatus;

    const-string v1, "TOO_FAR"

    invoke-direct {v0, v1, v6}, Lcom/android/ex/camera2/portability/BokehStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/BokehStatus;->TOO_FAR:Lcom/android/ex/camera2/portability/BokehStatus;

    new-instance v0, Lcom/android/ex/camera2/portability/BokehStatus;

    const-string v1, "LOW_LIGHT"

    invoke-direct {v0, v1, v7}, Lcom/android/ex/camera2/portability/BokehStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/BokehStatus;->LOW_LIGHT:Lcom/android/ex/camera2/portability/BokehStatus;

    new-instance v0, Lcom/android/ex/camera2/portability/BokehStatus;

    const-string v1, "SUBJECT_NOT_FOUND"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/BokehStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/BokehStatus;->SUBJECT_NOT_FOUND:Lcom/android/ex/camera2/portability/BokehStatus;

    new-instance v0, Lcom/android/ex/camera2/portability/BokehStatus;

    const-string v1, "TOUCH_TO_FOCUS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/BokehStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/BokehStatus;->TOUCH_TO_FOCUS:Lcom/android/ex/camera2/portability/BokehStatus;

    new-instance v0, Lcom/android/ex/camera2/portability/BokehStatus;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/BokehStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/camera2/portability/BokehStatus;->UNKNOWN:Lcom/android/ex/camera2/portability/BokehStatus;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/ex/camera2/portability/BokehStatus;

    sget-object v1, Lcom/android/ex/camera2/portability/BokehStatus;->NO_DEPTH_EFFECT:Lcom/android/ex/camera2/portability/BokehStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/ex/camera2/portability/BokehStatus;->DEPTH_EFFECT_SUCCESS:Lcom/android/ex/camera2/portability/BokehStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/ex/camera2/portability/BokehStatus;->TOO_NEAR:Lcom/android/ex/camera2/portability/BokehStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/ex/camera2/portability/BokehStatus;->TOO_FAR:Lcom/android/ex/camera2/portability/BokehStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/ex/camera2/portability/BokehStatus;->LOW_LIGHT:Lcom/android/ex/camera2/portability/BokehStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/ex/camera2/portability/BokehStatus;->SUBJECT_NOT_FOUND:Lcom/android/ex/camera2/portability/BokehStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/ex/camera2/portability/BokehStatus;->TOUCH_TO_FOCUS:Lcom/android/ex/camera2/portability/BokehStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/ex/camera2/portability/BokehStatus;->UNKNOWN:Lcom/android/ex/camera2/portability/BokehStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/ex/camera2/portability/BokehStatus;->$VALUES:[Lcom/android/ex/camera2/portability/BokehStatus;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/ex/camera2/portability/BokehStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/android/ex/camera2/portability/BokehStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/ex/camera2/portability/BokehStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/ex/camera2/portability/BokehStatus;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/android/ex/camera2/portability/BokehStatus;->$VALUES:[Lcom/android/ex/camera2/portability/BokehStatus;

    invoke-virtual {v0}, [Lcom/android/ex/camera2/portability/BokehStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/camera2/portability/BokehStatus;

    return-object v0
.end method
