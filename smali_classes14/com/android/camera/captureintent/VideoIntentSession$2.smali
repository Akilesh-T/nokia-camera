.class Lcom/android/camera/captureintent/VideoIntentSession$2;
.super Ljava/lang/Object;
.source "VideoIntentSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/VideoIntentSession;-><init>(Ljava/lang/String;Landroid/media/CamcorderProfile;JLandroid/net/Uri;Landroid/location/Location;Lcom/android/camera/session/CaptureSessionManager;Lcom/android/camera/session/SessionNotifier;Lcom/android/camera/session/CaptureSessionManager$SessionListener;Lcom/android/camera/session/PlaceholderManager;Lcom/android/camera/app/MediaSaver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/VideoIntentSession;

.field final synthetic val$externalUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/VideoIntentSession;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/VideoIntentSession;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/camera/captureintent/VideoIntentSession$2;->this$0:Lcom/android/camera/captureintent/VideoIntentSession;

    iput-object p2, p0, Lcom/android/camera/captureintent/VideoIntentSession$2;->val$externalUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 168
    :try_start_0
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/captureintent/VideoIntentSession$2;->val$externalUri:Landroid/net/Uri;

    const-string v4, "rw"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 169
    .local v1, "videoFD":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_0

    .line 170
    iget-object v2, p0, Lcom/android/camera/captureintent/VideoIntentSession$2;->this$0:Lcom/android/camera/captureintent/VideoIntentSession;

    invoke-static {v2}, Lcom/android/camera/captureintent/VideoIntentSession;->access$400(Lcom/android/camera/captureintent/VideoIntentSession;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 179
    .end local v1    # "videoFD":Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-void

    .line 172
    .restart local v1    # "videoFD":Landroid/os/ParcelFileDescriptor;
    :cond_0
    invoke-static {}, Lcom/android/camera/captureintent/VideoIntentSession;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFound : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/captureintent/VideoIntentSession$2;->val$externalUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/android/camera/captureintent/VideoIntentSession$2;->this$0:Lcom/android/camera/captureintent/VideoIntentSession;

    invoke-static {v2}, Lcom/android/camera/captureintent/VideoIntentSession;->access$400(Lcom/android/camera/captureintent/VideoIntentSession;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v2

    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileNotFound : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/captureintent/VideoIntentSession$2;->val$externalUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    .end local v1    # "videoFD":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "ex":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/android/camera/captureintent/VideoIntentSession;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lcom/android/camera/captureintent/VideoIntentSession$2;->this$0:Lcom/android/camera/captureintent/VideoIntentSession;

    invoke-static {v2}, Lcom/android/camera/captureintent/VideoIntentSession;->access$400(Lcom/android/camera/captureintent/VideoIntentSession;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
