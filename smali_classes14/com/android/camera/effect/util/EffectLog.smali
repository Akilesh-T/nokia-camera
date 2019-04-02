.class public Lcom/android/camera/effect/util/EffectLog;
.super Ljava/lang/Object;
.source "EffectLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/util/EffectLog$LogLevelEum;
    }
.end annotation


# static fields
.field private static final logLevel:Lcom/android/camera/effect/util/EffectLog$LogLevelEum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/camera/effect/util/EffectLog$LogLevelEum;->SHOW_ALL_LOG:Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

    sput-object v0, Lcom/android/camera/effect/util/EffectLog;->logLevel:Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 29
    sget-object v0, Lcom/android/camera/effect/util/EffectLog$LogLevelEum;->SHOW_ALL_LOG:Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

    sget-object v1, Lcom/android/camera/effect/util/EffectLog;->logLevel:Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

    if-ne v0, v1, :cond_0

    .line 30
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-object v0, Lcom/android/camera/effect/util/EffectLog$LogLevelEum;->SHOW_ERROR_LOG:Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

    sget-object v1, Lcom/android/camera/effect/util/EffectLog;->logLevel:Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/camera/effect/util/EffectLog$LogLevelEum;->SHOW_ALL_LOG:Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

    sget-object v1, Lcom/android/camera/effect/util/EffectLog;->logLevel:Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

    if-ne v0, v1, :cond_1

    .line 40
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 19
    sget-object v0, Lcom/android/camera/effect/util/EffectLog$LogLevelEum;->SHOW_ALL_LOG:Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

    sget-object v1, Lcom/android/camera/effect/util/EffectLog;->logLevel:Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

    if-ne v0, v1, :cond_0

    .line 20
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 24
    sget-object v0, Lcom/android/camera/effect/util/EffectLog$LogLevelEum;->SHOW_ALL_LOG:Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

    sget-object v1, Lcom/android/camera/effect/util/EffectLog;->logLevel:Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

    if-ne v0, v1, :cond_0

    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 34
    sget-object v0, Lcom/android/camera/effect/util/EffectLog$LogLevelEum;->SHOW_ERROR_LOG:Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

    sget-object v1, Lcom/android/camera/effect/util/EffectLog;->logLevel:Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/camera/effect/util/EffectLog$LogLevelEum;->SHOW_ALL_LOG:Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

    sget-object v1, Lcom/android/camera/effect/util/EffectLog;->logLevel:Lcom/android/camera/effect/util/EffectLog$LogLevelEum;

    if-ne v0, v1, :cond_1

    .line 35
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_1
    return-void
.end method
