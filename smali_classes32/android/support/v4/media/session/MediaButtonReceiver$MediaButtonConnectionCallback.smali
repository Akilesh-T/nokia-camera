.class Landroid/support/v4/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;
.super Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
.source "MediaButtonReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaButtonReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaButtonConnectionCallback"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

.field private final mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "pendingResult"    # Landroid/content/BroadcastReceiver$PendingResult;

    .prologue
    .line 143
    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;-><init>()V

    .line 144
    iput-object p1, p0, Landroid/support/v4/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mContext:Landroid/content/Context;

    .line 145
    iput-object p2, p0, Landroid/support/v4/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mIntent:Landroid/content/Intent;

    .line 146
    iput-object p3, p0, Landroid/support/v4/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    .line 147
    return-void
.end method

.method private finish()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Landroid/support/v4/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->disconnect()V

    .line 178
    iget-object v0, p0, Landroid/support/v4/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 179
    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 5

    .prologue
    .line 156
    :try_start_0
    new-instance v2, Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v3, p0, Landroid/support/v4/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v4/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    .line 157
    invoke-virtual {v4}, Landroid/support/v4/media/MediaBrowserCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 158
    .local v2, "mediaController":Landroid/support/v4/media/session/MediaControllerCompat;
    iget-object v3, p0, Landroid/support/v4/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 159
    .local v1, "ke":Landroid/view/KeyEvent;
    invoke-virtual {v2, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v1    # "ke":Landroid/view/KeyEvent;
    .end local v2    # "mediaController":Landroid/support/v4/media/session/MediaControllerCompat;
    :goto_0
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->finish()V

    .line 164
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MediaButtonReceiver"

    const-string v4, "Failed to create a media controller"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onConnectionFailed()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->finish()V

    .line 174
    return-void
.end method

.method public onConnectionSuspended()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->finish()V

    .line 169
    return-void
.end method

.method setMediaBrowser(Landroid/support/v4/media/MediaBrowserCompat;)V
    .locals 0
    .param p1, "mediaBrowser"    # Landroid/support/v4/media/MediaBrowserCompat;

    .prologue
    .line 150
    iput-object p1, p0, Landroid/support/v4/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    .line 151
    return-void
.end method
