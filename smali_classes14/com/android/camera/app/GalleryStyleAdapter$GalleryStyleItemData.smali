.class public Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;
.super Ljava/lang/Object;
.source "GalleryStyleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/GalleryStyleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GalleryStyleItemData"
.end annotation


# instance fields
.field public final mDisplayName:Ljava/lang/String;

.field public mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

.field public final mIcon:Ljava/lang/String;

.field public final mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/effect/util/EffectDataInfo;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "icon"    # Ljava/lang/String;
    .param p4, "info"    # Lcom/android/camera/effect/util/EffectDataInfo;

    .prologue
    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    iput-object p1, p0, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mKey:Ljava/lang/String;

    .line 524
    iput-object p2, p0, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mDisplayName:Ljava/lang/String;

    .line 525
    iput-object p3, p0, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mIcon:Ljava/lang/String;

    .line 526
    iput-object p4, p0, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    .line 527
    return-void
.end method
