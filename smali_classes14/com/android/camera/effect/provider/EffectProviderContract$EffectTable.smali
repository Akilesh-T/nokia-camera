.class public abstract Lcom/android/camera/effect/provider/EffectProviderContract$EffectTable;
.super Ljava/lang/Object;
.source "EffectProviderContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/provider/EffectProviderContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EffectTable"
.end annotation


# static fields
.field public static COLUMN_ID:Ljava/lang/String;

.field public static COLUMN_RESOURCE_ID:Ljava/lang/String;

.field public static COLUMN_RESULT:Ljava/lang/String;

.field public static COLUMN_SHELF_ID:Ljava/lang/String;

.field public static TABLE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "effect"

    sput-object v0, Lcom/android/camera/effect/provider/EffectProviderContract$EffectTable;->TABLE_NAME:Ljava/lang/String;

    .line 28
    const-string v0, "_id"

    sput-object v0, Lcom/android/camera/effect/provider/EffectProviderContract$EffectTable;->COLUMN_ID:Ljava/lang/String;

    .line 32
    const-string v0, "shelfid"

    sput-object v0, Lcom/android/camera/effect/provider/EffectProviderContract$EffectTable;->COLUMN_SHELF_ID:Ljava/lang/String;

    .line 33
    const-string v0, "resourceid"

    sput-object v0, Lcom/android/camera/effect/provider/EffectProviderContract$EffectTable;->COLUMN_RESOURCE_ID:Ljava/lang/String;

    .line 34
    const-string v0, "result"

    sput-object v0, Lcom/android/camera/effect/provider/EffectProviderContract$EffectTable;->COLUMN_RESULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
