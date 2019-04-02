.class public Lcom/laifeng/sopcastsdk/utils/SopCastLog;
.super Ljava/lang/Object;
.source "SopCastLog.java"


# static fields
.field private static open:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->open:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 22
    sget-boolean v0, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->open:Z

    if-eqz v0, :cond_0

    .line 23
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 34
    sget-boolean v0, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->open:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    return-void
.end method

.method public static isOpen(Z)V
    .locals 0
    .param p0, "isOpen"    # Z

    .prologue
    .line 18
    sput-boolean p0, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->open:Z

    .line 19
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-boolean v0, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->open:Z

    if-eqz v0, :cond_0

    .line 29
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    return-void
.end method
