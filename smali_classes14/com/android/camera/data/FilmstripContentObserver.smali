.class public Lcom/android/camera/data/FilmstripContentObserver;
.super Landroid/database/ContentObserver;
.source "FilmstripContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/FilmstripContentObserver$ChangeListener;
    }
.end annotation


# instance fields
.field private mActivityPaused:Z

.field private mChangeListener:Lcom/android/camera/data/FilmstripContentObserver$ChangeListener;

.field private mMediaDataChangedDuringPause:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 33
    iput-boolean v1, p0, Lcom/android/camera/data/FilmstripContentObserver;->mActivityPaused:Z

    .line 34
    iput-boolean v1, p0, Lcom/android/camera/data/FilmstripContentObserver;->mMediaDataChangedDuringPause:Z

    .line 38
    return-void
.end method


# virtual methods
.method public isMediaDataChangedDuringPause()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/camera/data/FilmstripContentObserver;->mMediaDataChangedDuringPause:Z

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/data/FilmstripContentObserver;->mChangeListener:Lcom/android/camera/data/FilmstripContentObserver$ChangeListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/camera/data/FilmstripContentObserver;->mChangeListener:Lcom/android/camera/data/FilmstripContentObserver$ChangeListener;

    invoke-interface {v0}, Lcom/android/camera/data/FilmstripContentObserver$ChangeListener;->onChange()V

    .line 57
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/data/FilmstripContentObserver;->mActivityPaused:Z

    if-eqz v0, :cond_1

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/data/FilmstripContentObserver;->mMediaDataChangedDuringPause:Z

    .line 60
    :cond_1
    return-void
.end method

.method public removeForegroundChangeListener()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/data/FilmstripContentObserver;->mChangeListener:Lcom/android/camera/data/FilmstripContentObserver$ChangeListener;

    .line 46
    return-void
.end method

.method public setActivityPaused(Z)V
    .locals 1
    .param p1, "paused"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/camera/data/FilmstripContentObserver;->mActivityPaused:Z

    .line 64
    if-nez p1, :cond_0

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/data/FilmstripContentObserver;->mMediaDataChangedDuringPause:Z

    .line 67
    :cond_0
    return-void
.end method

.method public setForegroundChangeListener(Lcom/android/camera/data/FilmstripContentObserver$ChangeListener;)V
    .locals 0
    .param p1, "changeListener"    # Lcom/android/camera/data/FilmstripContentObserver$ChangeListener;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/camera/data/FilmstripContentObserver;->mChangeListener:Lcom/android/camera/data/FilmstripContentObserver$ChangeListener;

    .line 42
    return-void
.end method
