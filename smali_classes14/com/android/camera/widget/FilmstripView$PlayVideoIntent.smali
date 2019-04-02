.class public Lcom/android/camera/widget/FilmstripView$PlayVideoIntent;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Lcom/android/camera/data/FilmstripItem$VideoClickedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/FilmstripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayVideoIntent"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/CameraActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/widget/FilmstripView$PlayVideoIntent;->mActivity:Ljava/lang/ref/WeakReference;

    .line 72
    return-void
.end method


# virtual methods
.method public playVideo(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v1, p0, Lcom/android/camera/widget/FilmstripView$PlayVideoIntent;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraActivity;

    .line 80
    .local v0, "activity":Lcom/android/camera/CameraActivity;
    if-eqz v0, :cond_0

    .line 81
    invoke-static {v0, p1, p2}, Lcom/android/camera/util/CameraUtil;->playVideo(Lcom/android/camera/CameraActivity;Landroid/net/Uri;Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method
