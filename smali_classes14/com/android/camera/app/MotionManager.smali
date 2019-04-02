.class public Lcom/android/camera/app/MotionManager;
.super Ljava/lang/Object;
.source "MotionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/app/MotionManager$MotionListener;
    }
.end annotation


# instance fields
.field private final mListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/app/MotionManager$MotionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/app/MotionManager;->mListeners:Ljava/util/LinkedList;

    .line 33
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/camera/app/MotionManager$MotionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/app/MotionManager$MotionListener;

    .prologue
    .line 36
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public onGyroUpdate(JFFF)V
    .locals 0
    .param p1, "t"    # J
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "z"    # F

    .prologue
    .line 55
    return-void
.end method

.method public removeListener(Lcom/android/camera/app/MotionManager$MotionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/app/MotionManager$MotionListener;

    .prologue
    .line 39
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method
