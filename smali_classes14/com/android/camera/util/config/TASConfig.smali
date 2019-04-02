.class public Lcom/android/camera/util/config/TASConfig;
.super Lcom/android/camera/util/config/ProductConfig;
.source "TASConfig.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;
    .param p2, "productModel"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/android/camera/util/config/ProductConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public getLowLightVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "2.0"

    return-object v0
.end method

.method public isNeedSceneRecognition()Z
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x1

    return v0
.end method

.method public isReqSuperResolution()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public isReqZeissBokeh()Z
    .locals 3

    .prologue
    .line 23
    const-string v0, "1"

    const-string v1, "camera.zeiss.bokeh.enable"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/thirdparty/arcsoft/utils/PropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSupportWideAndUltraWideMode()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    return v0
.end method
