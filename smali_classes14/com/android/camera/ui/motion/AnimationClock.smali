.class public abstract Lcom/android/camera/ui/motion/AnimationClock;
.super Ljava/lang/Object;
.source "AnimationClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/motion/AnimationClock$SystemTimeClock;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getTimeMillis()J
.end method
