.class Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTaskResult;
.super Ljava/lang/Object;
.source "CameraFilmstripDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/CameraFilmstripDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryTaskResult"
.end annotation


# instance fields
.field public mFilmstripItemList:Lcom/android/camera/data/FilmstripItemList;

.field public mLastMediaId:J

.field final synthetic this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/CameraFilmstripDataAdapter;Lcom/android/camera/data/FilmstripItemList;J)V
    .locals 1
    .param p2, "filmstripItemList"    # Lcom/android/camera/data/FilmstripItemList;
    .param p3, "lastMediaId"    # J

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTaskResult;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    iput-object p2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTaskResult;->mFilmstripItemList:Lcom/android/camera/data/FilmstripItemList;

    .line 433
    iput-wide p3, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTaskResult;->mLastMediaId:J

    .line 434
    return-void
.end method
