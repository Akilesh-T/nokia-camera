.class public Lcom/android/camera/VideoSnapShotButton;
.super Lcom/android/camera/ui/RotateImageView;
.source "VideoSnapShotButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "VideoSnapShotButton"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/VideoSnapShotButton;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/VideoSnapShotButton;->mListeners:Ljava/util/List;

    .line 45
    return-void
.end method


# virtual methods
.method public addVideoSnapShotButtonListener(Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/VideoSnapShotButton;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/camera/VideoSnapShotButton;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 4

    .prologue
    .line 67
    invoke-super {p0}, Lcom/android/camera/ui/RotateImageView;->performClick()Z

    move-result v1

    .line 68
    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/android/camera/VideoSnapShotButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/VideoSnapShotButton;->mListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/android/camera/VideoSnapShotButton;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;

    .line 70
    .local v0, "listener":Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;
    invoke-interface {v0}, Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;->onVideoSnapShotButtonClick()V

    goto :goto_0

    .line 73
    .end local v0    # "listener":Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;
    :cond_0
    return v1
.end method

.method public removeVideoSnapShotButtonListener(Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/VideoSnapShotButton;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/camera/VideoSnapShotButton;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63
    :cond_0
    return-void
.end method
