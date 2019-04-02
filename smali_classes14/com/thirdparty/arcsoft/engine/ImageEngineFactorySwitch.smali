.class public abstract Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch;
.super Ljava/lang/Object;
.source "ImageEngineFactorySwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$PostProcessImageEngineFactory;,
        Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactory;,
        Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;
    }
.end annotation


# static fields
.field private static final PREFERENCES_CAMERA_SDN_LOWLIGHT_CONFIG:Ljava/lang/String; = "_preferences_camera_sdn_lowlight_config"

.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

.field private static mImageEngineFactory:Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;

.field private static mPostProcessImageEngineFactory:Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "ImgEngFacSwitch"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    .line 29
    new-instance v0, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactory;

    invoke-direct {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactory;-><init>()V

    sput-object v0, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch;->mImageEngineFactory:Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;

    .line 30
    new-instance v0, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$PostProcessImageEngineFactory;

    invoke-direct {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$PostProcessImageEngineFactory;-><init>()V

    sput-object v0, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch;->mPostProcessImageEngineFactory:Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImageEngineFactory(Z)Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;
    .locals 1
    .param p0, "isUsePost"    # Z

    .prologue
    .line 33
    if-eqz p0, :cond_0

    .line 34
    sget-object v0, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch;->mPostProcessImageEngineFactory:Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;

    .line 36
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch;->mImageEngineFactory:Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;

    goto :goto_0
.end method
