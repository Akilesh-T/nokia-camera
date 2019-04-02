.class Lcom/android/camera/data/CameraFilmstripDataAdapter$DeletionTask;
.super Landroid/os/AsyncTask;
.source "CameraFilmstripDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/CameraFilmstripDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeletionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/camera/data/FilmstripItem;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;


# direct methods
.method private constructor <init>(Lcom/android/camera/data/CameraFilmstripDataAdapter;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$DeletionTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/data/CameraFilmstripDataAdapter;Lcom/android/camera/data/CameraFilmstripDataAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/data/CameraFilmstripDataAdapter;
    .param p2, "x1"    # Lcom/android/camera/data/CameraFilmstripDataAdapter$1;

    .prologue
    .line 571
    invoke-direct {p0, p1}, Lcom/android/camera/data/CameraFilmstripDataAdapter$DeletionTask;-><init>(Lcom/android/camera/data/CameraFilmstripDataAdapter;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 571
    check-cast p1, [Lcom/android/camera/data/FilmstripItem;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/CameraFilmstripDataAdapter$DeletionTask;->doInBackground([Lcom/android/camera/data/FilmstripItem;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/camera/data/FilmstripItem;)Ljava/lang/Void;
    .locals 8
    .param p1, "items"    # [Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 574
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 575
    .local v0, "item":Lcom/android/camera/data/FilmstripItem;
    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getAttributes()Lcom/android/camera/data/FilmstripItemAttributes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemAttributes;->canDelete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 576
    invoke-static {}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deletion is not supported:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 574
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 580
    :cond_0
    invoke-static {}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deletion item : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/FilmstripItemData;->getContentId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 581
    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->delete()Z

    goto :goto_1

    .line 583
    .end local v0    # "item":Lcom/android/camera/data/FilmstripItem;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method
