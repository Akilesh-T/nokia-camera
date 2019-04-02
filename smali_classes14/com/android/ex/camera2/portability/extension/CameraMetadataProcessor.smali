.class public abstract Lcom/android/ex/camera2/portability/extension/CameraMetadataProcessor;
.super Ljava/lang/Object;
.source "CameraMetadataProcessor.java"


# instance fields
.field protected final mOnMetadataChangedListener:Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;


# direct methods
.method public constructor <init>(Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/CameraMetadataProcessor;->mOnMetadataChangedListener:Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;

    .line 15
    return-void
.end method


# virtual methods
.method public abstract processCameraMetaData([B)V
    .param p1    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
