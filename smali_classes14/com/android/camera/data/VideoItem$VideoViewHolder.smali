.class Lcom/android/camera/data/VideoItem$VideoViewHolder;
.super Ljava/lang/Object;
.source "VideoItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/VideoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoViewHolder"
.end annotation


# instance fields
.field private final mPlayButton:Landroid/widget/ImageView;

.field private final mVideoView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "videoView"    # Landroid/widget/ImageView;
    .param p2, "playButton"    # Landroid/widget/ImageView;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/camera/data/VideoItem$VideoViewHolder;->mVideoView:Landroid/widget/ImageView;

    .line 49
    iput-object p2, p0, Lcom/android/camera/data/VideoItem$VideoViewHolder;->mPlayButton:Landroid/widget/ImageView;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/data/VideoItem$VideoViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/data/VideoItem$VideoViewHolder;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/data/VideoItem$VideoViewHolder;->mPlayButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/data/VideoItem$VideoViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/data/VideoItem$VideoViewHolder;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/data/VideoItem$VideoViewHolder;->mVideoView:Landroid/widget/ImageView;

    return-object v0
.end method
