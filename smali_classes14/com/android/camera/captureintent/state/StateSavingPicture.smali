.class public Lcom/android/camera/captureintent/state/StateSavingPicture;
.super Lcom/android/camera/captureintent/stateful/StateImpl;
.source "StateSavingPicture.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mPictureData:[B

.field private final mResourceConstructed:Lcom/android/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "StateSavePic"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/captureintent/state/StateSavingPicture;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;[B)V
    .locals 1
    .param p1, "previousState"    # Lcom/android/camera/captureintent/stateful/State;
    .param p3, "pictureData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/stateful/State;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    invoke-direct {p0, p1}, Lcom/android/camera/captureintent/stateful/StateImpl;-><init>(Lcom/android/camera/captureintent/stateful/State;)V

    .line 59
    iput-object p2, p0, Lcom/android/camera/captureintent/state/StateSavingPicture;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    .line 60
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateSavingPicture;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->addRef()V

    .line 61
    iput-object p3, p0, Lcom/android/camera/captureintent/state/StateSavingPicture;->mPictureData:[B

    .line 62
    return-void
.end method

.method public static from(Lcom/android/camera/captureintent/state/StateReviewingPicture;Lcom/android/camera/async/RefCountBase;[B)Lcom/android/camera/captureintent/state/StateSavingPicture;
    .locals 1
    .param p0, "reviewingPicture"    # Lcom/android/camera/captureintent/state/StateReviewingPicture;
    .param p2, "pictureData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/captureintent/state/StateReviewingPicture;",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;[B)",
            "Lcom/android/camera/captureintent/state/StateSavingPicture;"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "resourceConstructed":Lcom/android/camera/async/RefCountBase;, "Lcom/android/camera/async/RefCountBase<Lcom/android/camera/captureintent/resource/ResourceConstructed;>;"
    new-instance v0, Lcom/android/camera/captureintent/state/StateSavingPicture;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/captureintent/state/StateSavingPicture;-><init>(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;[B)V

    return-object v0
.end method


# virtual methods
.method public onEnter()Lcom/google/common/base/Optional;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/captureintent/stateful/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v4

    .line 75
    .local v4, "saveUri":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/net/Uri;>;"
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateSavingPicture;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v6}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 76
    .local v2, "myExtras":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 77
    const-string v6, "output"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 78
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 79
    invoke-static {v5}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v4

    .line 81
    :cond_0
    const-string v6, "crop"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-virtual {v4}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 85
    const/4 v3, 0x0

    .line 87
    .local v3, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateSavingPicture;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v6}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v6

    check-cast v6, Lcom/android/camera/captureintent/resource/ResourceConstructed;

    invoke-interface {v6}, Lcom/android/camera/captureintent/resource/ResourceConstructed;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 88
    invoke-virtual {v4}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-virtual {v7, v6}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 89
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateSavingPicture;->mPictureData:[B

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 90
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 92
    sget-object v6, Lcom/android/camera/captureintent/state/StateSavingPicture;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saved result to URI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 93
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateSavingPicture;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v6, v7}, Lcom/android/camera/captureintent/state/StateIntentCompleted;->from(Lcom/android/camera/captureintent/state/StateSavingPicture;Lcom/android/camera/async/RefCountBase;Landroid/content/Intent;)Lcom/android/camera/captureintent/state/StateIntentCompleted;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 98
    invoke-static {v3}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 108
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    :goto_0
    return-object v6

    .line 95
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 96
    .local v1, "ex":Ljava/io/IOException;
    :try_start_1
    sget-object v6, Lcom/android/camera/captureintent/state/StateSavingPicture;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception while saving result to URI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    invoke-static {v3}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 108
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateSavingPicture;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-static {p0, v6}, Lcom/android/camera/captureintent/state/StateIntentCompleted;->from(Lcom/android/camera/captureintent/stateful/State;Lcom/android/camera/async/RefCountBase;)Lcom/android/camera/captureintent/state/StateIntentCompleted;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v6

    goto :goto_0

    .line 98
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-static {v3}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v6

    .line 102
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    :cond_2
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateSavingPicture;->mPictureData:[B

    const v7, 0xc800

    invoke-static {v6, v7}, Lcom/android/camera/util/CameraUtil;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/android/camera/captureintent/state/StateSavingPicture;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "inline-data"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "data"

    .line 106
    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v7

    .line 104
    invoke-static {p0, v6, v7}, Lcom/android/camera/captureintent/state/StateIntentCompleted;->from(Lcom/android/camera/captureintent/state/StateSavingPicture;Lcom/android/camera/async/RefCountBase;Landroid/content/Intent;)Lcom/android/camera/captureintent/state/StateIntentCompleted;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v6

    goto :goto_0
.end method

.method public onLeave()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateSavingPicture;->mResourceConstructed:Lcom/android/camera/async/RefCountBase;

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->close()V

    .line 114
    return-void
.end method
