.class public Lcom/android/camera/app/EffectListViewAdapter$EffectItemData;
.super Ljava/lang/Object;
.source "EffectListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/EffectListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EffectItemData"
.end annotation


# instance fields
.field public final mDisableIcon:I

.field public final mIcon:I

.field public final mKey:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "key"    # I
    .param p2, "icon"    # I
    .param p3, "disableIcon"    # I

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput p1, p0, Lcom/android/camera/app/EffectListViewAdapter$EffectItemData;->mKey:I

    .line 179
    iput p2, p0, Lcom/android/camera/app/EffectListViewAdapter$EffectItemData;->mIcon:I

    .line 180
    iput p3, p0, Lcom/android/camera/app/EffectListViewAdapter$EffectItemData;->mDisableIcon:I

    .line 181
    return-void
.end method
