.class Lcom/android/camera/one/v2/core/RequestBuilder$RequestImpl;
.super Ljava/lang/Object;
.source "RequestBuilder.java"

# interfaces
.implements Lcom/android/camera/one/v2/core/Request;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/core/RequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/core/RequestBuilder$RequestImpl$Allocation;
    }
.end annotation


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

.field private final mCaptureRequestBuilder:Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;

.field private final mResponseListener:Lcom/android/camera/one/v2/core/ResponseListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;Ljava/util/List;Lcom/android/camera/one/v2/core/ResponseListener;)V
    .locals 0
    .param p1, "builder"    # Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;
    .param p3, "responseListener"    # Lcom/android/camera/one/v2/core/ResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/core/RequestBuilder$RequestImpl$Allocation;",
            ">;",
            "Lcom/android/camera/one/v2/core/ResponseListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 105
    .local p2, "allocations":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/core/RequestBuilder$RequestImpl$Allocation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/android/camera/one/v2/core/RequestBuilder$RequestImpl;->mCaptureRequestBuilder:Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;

    .line 107
    iput-object p2, p0, Lcom/android/camera/one/v2/core/RequestBuilder$RequestImpl;->mAllocations:Ljava/util/List;

    .line 108
    iput-object p3, p0, Lcom/android/camera/one/v2/core/RequestBuilder$RequestImpl;->mResponseListener:Lcom/android/camera/one/v2/core/ResponseListener;

    .line 109
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/camera/one/v2/core/RequestBuilder$RequestImpl;->mAllocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/RequestBuilder$RequestImpl$Allocation;

    .line 128
    .local v0, "allocation":Lcom/android/camera/one/v2/core/RequestBuilder$RequestImpl$Allocation;
    invoke-interface {v0}, Lcom/android/camera/one/v2/core/RequestBuilder$RequestImpl$Allocation;->abort()V

    goto :goto_0

    .line 130
    .end local v0    # "allocation":Lcom/android/camera/one/v2/core/RequestBuilder$RequestImpl$Allocation;
    :cond_0
    return-void
.end method

.method public allocateCaptureRequest()Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/camera/one/v2/core/RequestBuilder$RequestImpl;->mAllocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/core/RequestBuilder$RequestImpl$Allocation;

    .line 115
    .local v0, "allocation":Lcom/android/camera/one/v2/core/RequestBuilder$RequestImpl$Allocation;
    invoke-interface {v0}, Lcom/android/camera/one/v2/core/RequestBuilder$RequestImpl$Allocation;->allocate()V

    goto :goto_0

    .line 117
    .end local v0    # "allocation":Lcom/android/camera/one/v2/core/RequestBuilder$RequestImpl$Allocation;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/core/RequestBuilder$RequestImpl;->mCaptureRequestBuilder:Lcom/android/camera/one/v2/camera2proxy/CaptureRequestBuilderProxy;

    return-object v1
.end method

.method public getResponseListener()Lcom/android/camera/one/v2/core/ResponseListener;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/one/v2/core/RequestBuilder$RequestImpl;->mResponseListener:Lcom/android/camera/one/v2/core/ResponseListener;

    return-object v0
.end method
