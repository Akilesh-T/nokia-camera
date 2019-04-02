.class public Lcom/android/camera/ui/motion/AnimationClock$SystemTimeClock;
.super Lcom/android/camera/ui/motion/AnimationClock;
.source "AnimationClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/motion/AnimationClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemTimeClock"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/camera/ui/motion/AnimationClock;-><init>()V

    return-void
.end method


# virtual methods
.method public getTimeMillis()J
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
