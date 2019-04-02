.class Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask$1;
.super Ljava/lang/Object;
.source "CameraFilmstripDataAdapter.java"

# interfaces
.implements Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;->onPostExecute(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;

.field final synthetic val$updatedData:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;

    .prologue
    .line 621
    iput-object p1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask$1;->this$1:Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;

    iput-object p2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask$1;->val$updatedData:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDataRemoved(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 624
    const/4 v0, 0x0

    return v0
.end method

.method public isDataUpdated(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask$1;->val$updatedData:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
