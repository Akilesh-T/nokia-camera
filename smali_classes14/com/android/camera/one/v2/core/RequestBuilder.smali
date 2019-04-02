.class public Lcom/android/camera/one/v2/core/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/core/RequestBuilder$RequestImpl;,
        Lcom/android/camera/one/v2/core/RequestBuilder$UnregisteredStreamProvider;,
        Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mAllocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/core/RequestBuilder$RequestImpl$Allocation;",
            ">;"
        }
    .end annotation
.end field

.field private final mBuilder:Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;

.field private final mResponseListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/core/ResponseListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "RequestBuilder"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/core/RequestBuilder;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;)V
    .locals 1
    .param p1, "builder"    # Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/android/camera/one/v2/core/RequestBuilder;->mBuilder:Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/core/RequestBuilder;->mAllocations:Ljava/util/List;

    .line 148
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/core/RequestBuilder;->mResponseListeners:Ljava/util/Set;

    .line 149
    return-void
.end method


# virtual methods
.method public addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/one/v2/core/ResponseListener;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/camera/one/v2/core/RequestBuilder;->mResponseListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method public addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V
    .locals 5
    .param p1, "captureStream"    # Lcom/android/camera/one/v2/core/CaptureStream;

    .prologue
    .line 190
    new-instance v0, Lcom/android/camera/async/ConcurrentBufferQueue;

    invoke-direct {v0}, Lcom/android/camera/async/ConcurrentBufferQueue;-><init>()V

    .line 192
    .local v0, "timestamps":Lcom/android/camera/async/ConcurrentBufferQueue;, "Lcom/android/camera/async/ConcurrentBufferQueue<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/android/camera/one/v2/core/RequestBuilder;->mAllocations:Ljava/util/List;

    new-instance v2, Lcom/android/camera/one/v2/core/RequestBuilder$UnregisteredStreamProvider;

    iget-object v3, p0, Lcom/android/camera/one/v2/core/RequestBuilder;->mBuilder:Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v0, v3, v4}, Lcom/android/camera/one/v2/core/RequestBuilder$UnregisteredStreamProvider;-><init>(Lcom/android/camera/one/v2/core/CaptureStream;Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;Lcom/android/camera/one/v2/core/RequestBuilder$1;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v1, p0, Lcom/android/camera/one/v2/core/RequestBuilder;->mResponseListeners:Ljava/util/Set;

    invoke-static {v0}, Lcom/android/camera/one/v2/core/ResponseListeners;->forTimestamps(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    return-void
.end method

.method public build()Lcom/android/camera/one/v2/core/Request;
    .locals 6

    .prologue
    .line 205
    new-instance v0, Lcom/android/camera/one/v2/core/RequestBuilder$RequestImpl;

    iget-object v1, p0, Lcom/android/camera/one/v2/core/RequestBuilder;->mBuilder:Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;

    iget-object v2, p0, Lcom/android/camera/one/v2/core/RequestBuilder;->mAllocations:Ljava/util/List;

    new-instance v3, Lcom/android/camera/one/v2/core/ResponseListenerBroadcaster;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/camera/one/v2/core/RequestBuilder;->mResponseListeners:Ljava/util/Set;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v3, v4}, Lcom/android/camera/one/v2/core/ResponseListenerBroadcaster;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/one/v2/core/RequestBuilder$RequestImpl;-><init>(Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;Ljava/util/List;Lcom/android/camera/one/v2/core/ResponseListener;)V

    return-object v0
.end method

.method public getOriginalRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/camera/one/v2/core/RequestBuilder;->mBuilder:Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/core/RequestBuilder;->mBuilder:Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;->getOriginalRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/core/RequestBuilder;->mBuilder:Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;

    invoke-virtual {v1, p1}, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    .line 173
    iget-object v1, p0, Lcom/android/camera/one/v2/core/RequestBuilder;->mBuilder:Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/camera/one/v2/core/RequestBuilder;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setParam Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
