.class Landroid/support/v4/media/VolumeProviderCompatApi21;
.super Ljava/lang/Object;
.source "VolumeProviderCompatApi21.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/VolumeProviderCompatApi21$Delegate;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static createVolumeProvider(IIILandroid/support/v4/media/VolumeProviderCompatApi21$Delegate;)Ljava/lang/Object;
    .locals 1
    .param p0, "volumeControl"    # I
    .param p1, "maxVolume"    # I
    .param p2, "currentVolume"    # I
    .param p3, "delegate"    # Landroid/support/v4/media/VolumeProviderCompatApi21$Delegate;

    .prologue
    .line 27
    new-instance v0, Landroid/support/v4/media/VolumeProviderCompatApi21$1;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/support/v4/media/VolumeProviderCompatApi21$1;-><init>(IIILandroid/support/v4/media/VolumeProviderCompatApi21$Delegate;)V

    return-object v0
.end method

.method public static setCurrentVolume(Ljava/lang/Object;I)V
    .locals 0
    .param p0, "volumeProviderObj"    # Ljava/lang/Object;
    .param p1, "currentVolume"    # I

    .prologue
    .line 41
    check-cast p0, Landroid/media/VolumeProvider;

    .end local p0    # "volumeProviderObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/VolumeProvider;->setCurrentVolume(I)V

    .line 42
    return-void
.end method
