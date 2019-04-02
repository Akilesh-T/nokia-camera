.class public Lcom/android/camera/one/v2/core/RequestTemplate;
.super Ljava/lang/Object;
.source "RequestTemplate.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
.implements Lcom/android/camera/one/v2/core/ResponseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/core/RequestTemplate$Parameter;
    }
.end annotation


# instance fields
.field private final mCaptureStreams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/camera/one/v2/core/CaptureStream;",
            "Lcom/android/camera/one/v2/core/CaptureStream$StreamType;",
            ">;"
        }
    .end annotation
.end field

.field private final mParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/core/RequestTemplate$Parameter",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mRequestBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

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
.method public constructor <init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V
    .locals 1
    .param p1, "requestBuilderFactory"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/camera/one/v2/core/RequestTemplate;->mRequestBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/core/RequestTemplate;->mResponseListeners:Ljava/util/Set;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/core/RequestTemplate;->mParameters:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/core/RequestTemplate;->mCaptureStreams:Ljava/util/HashMap;

    .line 70
    return-void
.end method


# virtual methods
.method public addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/one/v2/core/ResponseListener;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/camera/one/v2/core/RequestTemplate;->mResponseListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public addStream(Lcom/android/camera/one/v2/core/CaptureStream;)Lcom/android/camera/one/v2/core/RequestTemplate;
    .locals 2
    .param p1, "stream"    # Lcom/android/camera/one/v2/core/CaptureStream;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/one/v2/core/RequestTemplate;->mCaptureStreams:Ljava/util/HashMap;

    sget-object v1, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;->UNKNOW:Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-object p0
.end method

.method public addStream(Lcom/android/camera/one/v2/core/CaptureStream;Lcom/android/camera/one/v2/core/CaptureStream$StreamType;)Lcom/android/camera/one/v2/core/RequestTemplate;
    .locals 1
    .param p1, "stream"    # Lcom/android/camera/one/v2/core/CaptureStream;
    .param p2, "streamType"    # Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/one/v2/core/RequestTemplate;->mCaptureStreams:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-object p0
.end method

.method public create(I)Lcom/android/camera/one/v2/core/RequestBuilder;
    .locals 6
    .param p1, "templateType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v4, p0, Lcom/android/camera/one/v2/core/RequestTemplate;->mRequestBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    invoke-interface {v4, p1}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    .line 110
    .local v0, "builder":Lcom/android/camera/one/v2/core/RequestBuilder;
    iget-object v4, p0, Lcom/android/camera/one/v2/core/RequestTemplate;->mParameters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/core/RequestTemplate$Parameter;

    .line 111
    .local v2, "param":Lcom/android/camera/one/v2/core/RequestTemplate$Parameter;
    invoke-virtual {v2, v0}, Lcom/android/camera/one/v2/core/RequestTemplate$Parameter;->addToBuilder(Lcom/android/camera/one/v2/core/RequestBuilder;)V

    goto :goto_0

    .line 113
    .end local v2    # "param":Lcom/android/camera/one/v2/core/RequestTemplate$Parameter;
    :cond_0
    iget-object v4, p0, Lcom/android/camera/one/v2/core/RequestTemplate;->mResponseListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/core/ResponseListener;

    .line 114
    .local v1, "listener":Lcom/android/camera/one/v2/core/ResponseListener;
    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    goto :goto_1

    .line 116
    .end local v1    # "listener":Lcom/android/camera/one/v2/core/ResponseListener;
    :cond_1
    iget-object v4, p0, Lcom/android/camera/one/v2/core/RequestTemplate;->mCaptureStreams:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/core/CaptureStream;

    .line 117
    .local v3, "stream":Lcom/android/camera/one/v2/core/CaptureStream;
    invoke-virtual {v0, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    goto :goto_2

    .line 119
    .end local v3    # "stream":Lcom/android/camera/one/v2/core/CaptureStream;
    :cond_2
    return-object v0
.end method

.method public createNonPreview(I)Lcom/android/camera/one/v2/core/RequestBuilder;
    .locals 7
    .param p1, "templateType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v4, p0, Lcom/android/camera/one/v2/core/RequestTemplate;->mRequestBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    invoke-interface {v4, p1}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->createNonPreview(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    .line 125
    .local v0, "builder":Lcom/android/camera/one/v2/core/RequestBuilder;
    iget-object v4, p0, Lcom/android/camera/one/v2/core/RequestTemplate;->mParameters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/core/RequestTemplate$Parameter;

    .line 126
    .local v2, "param":Lcom/android/camera/one/v2/core/RequestTemplate$Parameter;
    invoke-virtual {v2, v0}, Lcom/android/camera/one/v2/core/RequestTemplate$Parameter;->addToBuilder(Lcom/android/camera/one/v2/core/RequestBuilder;)V

    goto :goto_0

    .line 128
    .end local v2    # "param":Lcom/android/camera/one/v2/core/RequestTemplate$Parameter;
    :cond_0
    iget-object v4, p0, Lcom/android/camera/one/v2/core/RequestTemplate;->mResponseListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/core/ResponseListener;

    .line 129
    .local v1, "listener":Lcom/android/camera/one/v2/core/ResponseListener;
    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    goto :goto_1

    .line 131
    .end local v1    # "listener":Lcom/android/camera/one/v2/core/ResponseListener;
    :cond_1
    iget-object v4, p0, Lcom/android/camera/one/v2/core/RequestTemplate;->mCaptureStreams:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/core/CaptureStream;

    .line 132
    .local v3, "stream":Lcom/android/camera/one/v2/core/CaptureStream;
    iget-object v4, p0, Lcom/android/camera/one/v2/core/RequestTemplate;->mCaptureStreams:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    sget-object v6, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;->PREVIEW:Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    invoke-virtual {v4, v6}, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 133
    invoke-virtual {v0, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    goto :goto_2

    .line 136
    .end local v3    # "stream":Lcom/android/camera/one/v2/core/CaptureStream;
    :cond_3
    return-object v0
.end method

.method public createRecordOnly(I)Lcom/android/camera/one/v2/core/RequestBuilder;
    .locals 6
    .param p1, "templateType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v3, p0, Lcom/android/camera/one/v2/core/RequestTemplate;->mRequestBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    invoke-interface {v3, p1}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->createRecordOnly(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    .line 142
    .local v0, "builder":Lcom/android/camera/one/v2/core/RequestBuilder;
    iget-object v3, p0, Lcom/android/camera/one/v2/core/RequestTemplate;->mParameters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/core/RequestTemplate$Parameter;

    .line 143
    .local v1, "param":Lcom/android/camera/one/v2/core/RequestTemplate$Parameter;
    invoke-virtual {v1, v0}, Lcom/android/camera/one/v2/core/RequestTemplate$Parameter;->addToBuilder(Lcom/android/camera/one/v2/core/RequestBuilder;)V

    goto :goto_0

    .line 148
    .end local v1    # "param":Lcom/android/camera/one/v2/core/RequestTemplate$Parameter;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/one/v2/core/RequestTemplate;->mCaptureStreams:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/core/CaptureStream;

    .line 149
    .local v2, "stream":Lcom/android/camera/one/v2/core/CaptureStream;
    iget-object v3, p0, Lcom/android/camera/one/v2/core/RequestTemplate;->mCaptureStreams:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    sget-object v5, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;->RECORD:Lcom/android/camera/one/v2/core/CaptureStream$StreamType;

    invoke-virtual {v3, v5}, Lcom/android/camera/one/v2/core/CaptureStream$StreamType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    invoke-virtual {v0, v2}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    goto :goto_1

    .line 153
    .end local v2    # "stream":Lcom/android/camera/one/v2/core/CaptureStream;
    :cond_2
    return-object v0
.end method

.method public createReprocess(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)Lcom/android/camera/one/v2/core/RequestBuilder;
    .locals 1
    .param p1, "captureResultProxy"    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/camera/one/v2/core/RequestTemplate;->mRequestBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->createReprocess(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/one/v2/core/RequestTemplate;->mResponseListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 164
    iget-object v0, p0, Lcom/android/camera/one/v2/core/RequestTemplate;->mParameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 165
    iget-object v0, p0, Lcom/android/camera/one/v2/core/RequestTemplate;->mCaptureStreams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 166
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 167
    return-void
.end method

.method public setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;",
            "Lcom/google/common/base/Supplier",
            "<TT;>;)",
            "Lcom/android/camera/one/v2/core/RequestTemplate;"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "value":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<TT;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/core/RequestTemplate;->mParameters:Ljava/util/List;

    new-instance v1, Lcom/android/camera/one/v2/core/RequestTemplate$Parameter;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/android/camera/one/v2/core/RequestTemplate$Parameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;Lcom/android/camera/one/v2/core/RequestTemplate$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    return-object p0
.end method

.method public setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/android/camera/one/v2/core/RequestTemplate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key",
            "<TT;>;TT;)",
            "Lcom/android/camera/one/v2/core/RequestTemplate;"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p2}, Lcom/google/common/base/Suppliers;->ofInstance(Ljava/lang/Object;)Lcom/google/common/base/Supplier;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/one/v2/core/RequestTemplate;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/google/common/base/Supplier;)Lcom/android/camera/one/v2/core/RequestTemplate;

    move-result-object v0

    return-object v0
.end method
