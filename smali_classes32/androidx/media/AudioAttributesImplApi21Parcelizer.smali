.class public final Landroidx/media/AudioAttributesImplApi21Parcelizer;
.super Ljava/lang/Object;
.source "AudioAttributesImplApi21Parcelizer.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroid/support/v4/media/AudioAttributesImplApi21;
    .locals 3
    .param p0, "parcel"    # Landroidx/versionedparcelable/VersionedParcel;

    .prologue
    .line 11
    new-instance v0, Landroid/support/v4/media/AudioAttributesImplApi21;

    invoke-direct {v0}, Landroid/support/v4/media/AudioAttributesImplApi21;-><init>()V

    .line 12
    .local v0, "obj":Landroid/support/v4/media/AudioAttributesImplApi21;
    iget-object v1, v0, Landroid/support/v4/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    iput-object v1, v0, Landroid/support/v4/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 13
    iget v1, v0, Landroid/support/v4/media/AudioAttributesImplApi21;->mLegacyStreamType:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/media/AudioAttributesImplApi21;->mLegacyStreamType:I

    .line 14
    return-object v0
.end method

.method public static write(Landroid/support/v4/media/AudioAttributesImplApi21;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2
    .param p0, "obj"    # Landroid/support/v4/media/AudioAttributesImplApi21;
    .param p1, "parcel"    # Landroidx/versionedparcelable/VersionedParcel;

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    .line 19
    iget-object v0, p0, Landroid/support/v4/media/AudioAttributesImplApi21;->mAudioAttributes:Landroid/media/AudioAttributes;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 20
    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplApi21;->mLegacyStreamType:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    .line 21
    return-void
.end method
