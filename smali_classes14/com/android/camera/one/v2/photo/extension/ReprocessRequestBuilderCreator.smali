.class public Lcom/android/camera/one/v2/photo/extension/ReprocessRequestBuilderCreator;
.super Ljava/lang/Object;
.source "ReprocessRequestBuilderCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)Lcom/android/camera/one/v2/photo/extension/ReprocessRequestBuilder;
    .locals 3
    .param p0, "factory"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .prologue
    .line 20
    const/4 v1, 0x0

    .line 21
    .local v1, "reprocessRequestBuilder":Lcom/android/camera/one/v2/photo/extension/ReprocessRequestBuilder;
    invoke-static {}, Lcom/android/ex/camera2/utils/PlatformUtil;->getPlatform()Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    move-result-object v0

    .line 22
    .local v0, "platform":Lcom/android/ex/camera2/utils/PlatformUtil$Platform;
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->QUALCOMM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v0, v2, :cond_0

    .line 23
    new-instance v1, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCReprocessRequestBuilder;

    .end local v1    # "reprocessRequestBuilder":Lcom/android/camera/one/v2/photo/extension/ReprocessRequestBuilder;
    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCReprocessRequestBuilder;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V

    .line 31
    .restart local v1    # "reprocessRequestBuilder":Lcom/android/camera/one/v2/photo/extension/ReprocessRequestBuilder;
    :goto_0
    return-object v1

    .line 24
    :cond_0
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->MTK:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v0, v2, :cond_1

    .line 25
    new-instance v1, Lcom/android/camera/one/v2/photo/extension/mtk/MTKReprocessRequestBuilder;

    .end local v1    # "reprocessRequestBuilder":Lcom/android/camera/one/v2/photo/extension/ReprocessRequestBuilder;
    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/photo/extension/mtk/MTKReprocessRequestBuilder;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V

    .restart local v1    # "reprocessRequestBuilder":Lcom/android/camera/one/v2/photo/extension/ReprocessRequestBuilder;
    goto :goto_0

    .line 26
    :cond_1
    sget-object v2, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->SPREADTRUM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v0, v2, :cond_2

    .line 27
    new-instance v1, Lcom/android/camera/one/v2/photo/extension/spreadtrum/SPTReprocessRequestBuilder;

    .end local v1    # "reprocessRequestBuilder":Lcom/android/camera/one/v2/photo/extension/ReprocessRequestBuilder;
    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/photo/extension/spreadtrum/SPTReprocessRequestBuilder;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V

    .restart local v1    # "reprocessRequestBuilder":Lcom/android/camera/one/v2/photo/extension/ReprocessRequestBuilder;
    goto :goto_0

    .line 29
    :cond_2
    new-instance v1, Lcom/android/camera/one/v2/photo/extension/aosp/AOSPReprocessRequestBuilder;

    .end local v1    # "reprocessRequestBuilder":Lcom/android/camera/one/v2/photo/extension/ReprocessRequestBuilder;
    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/photo/extension/aosp/AOSPReprocessRequestBuilder;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V

    .restart local v1    # "reprocessRequestBuilder":Lcom/android/camera/one/v2/photo/extension/ReprocessRequestBuilder;
    goto :goto_0
.end method
