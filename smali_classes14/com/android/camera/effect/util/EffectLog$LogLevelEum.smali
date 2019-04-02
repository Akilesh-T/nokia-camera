.class final enum Lcom/android/camera/effect/util/EffectLog$LogLevelEum;
.super Ljava/lang/Enum;
.source "EffectLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/util/EffectLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LogLevelEum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/effect/util/EffectLog$LogLevelEum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

.field public static final enum NOT_SHOW_LOG:Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

.field public static final enum SHOW_ALL_LOG:Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

.field public static final enum SHOW_ERROR_LOG:Lcom/android/camera/effect/util/EffectLog$LogLevelEum;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

    const-string v1, "NOT_SHOW_LOG"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/effect/util/EffectLog$LogLevelEum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/effect/util/EffectLog$LogLevelEum;->NOT_SHOW_LOG:Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

    .line 12
    new-instance v0, Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

    const-string v1, "SHOW_ERROR_LOG"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/effect/util/EffectLog$LogLevelEum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/effect/util/EffectLog$LogLevelEum;->SHOW_ERROR_LOG:Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

    .line 13
    new-instance v0, Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

    const-string v1, "SHOW_ALL_LOG"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/effect/util/EffectLog$LogLevelEum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/effect/util/EffectLog$LogLevelEum;->SHOW_ALL_LOG:Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

    sget-object v1, Lcom/android/camera/effect/util/EffectLog$LogLevelEum;->NOT_SHOW_LOG:Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/effect/util/EffectLog$LogLevelEum;->SHOW_ERROR_LOG:Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/effect/util/EffectLog$LogLevelEum;->SHOW_ALL_LOG:Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/camera/effect/util/EffectLog$LogLevelEum;->$VALUES:[Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/effect/util/EffectLog$LogLevelEum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/effect/util/EffectLog$LogLevelEum;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/android/camera/effect/util/EffectLog$LogLevelEum;->$VALUES:[Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

    invoke-virtual {v0}, [Lcom/android/camera/effect/util/EffectLog$LogLevelEum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

    return-object v0
.end method
