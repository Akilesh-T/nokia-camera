.class Lcom/android/camera/CameraActivity$9;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CameraActivity;

    .prologue
    .line 1126
    iput-object p1, p0, Lcom/android/camera/CameraActivity$9;->this$0:Lcom/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataUpdated(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1129
    .local p1, "indexes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/camera/CameraActivity$9;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$100(Lcom/android/camera/CameraActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1142
    :cond_0
    :goto_0
    return-void

    .line 1133
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraActivity$9;->this$0:Lcom/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/android/camera/CameraActivity;->access$300(Lcom/android/camera/CameraActivity;)Lcom/android/camera/filmstrip/FilmstripController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/filmstrip/FilmstripController;->getCurrentAdapterIndex()I

    move-result v0

    .line 1134
    .local v0, "currentIndex":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1135
    .local v1, "index":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_2

    .line 1136
    iget-object v2, p0, Lcom/android/camera/CameraActivity$9;->this$0:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/camera/CameraActivity;->access$2600(Lcom/android/camera/CameraActivity;I)V

    goto :goto_0
.end method
