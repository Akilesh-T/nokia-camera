.class public final Lcom/android/camera/ui/watermark/Weather$PreWarning;
.super Ljava/lang/Object;
.source "Weather.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/watermark/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PreWarning"
.end annotation


# static fields
.field public static final COLUMN_NAME_CATEGORY_INDEX:Ljava/lang/String; = "warningCategoryIndex"

.field public static final COLUMN_NAME_CATEGORY_NAME:Ljava/lang/String; = "warningCategory"

.field public static final COLUMN_NAME_CITY_ID:Ljava/lang/String; = "cityId"

.field public static final COLUMN_NAME_DETAIL:Ljava/lang/String; = "warningMsgDetail"

.field public static final COLUMN_NAME_DISTRICT_NAME:Ljava/lang/String; = "warningReportOrganization"

.field public static final COLUMN_NAME_ISPUSH:Ljava/lang/String; = "isPush"

.field public static final COLUMN_NAME_LEVEL:Ljava/lang/String; = "warningLevel"

.field public static final COLUMN_NAME_REPORT_TIME:Ljava/lang/String; = "warningReportTime"

.field public static final COLUMN_NAME_TITLE:Ljava/lang/String; = "warningMsgTitle"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final PATH_WARNING:Ljava/lang/String; = "/warning"

.field public static final TABLE_NAME:Ljava/lang/String; = "warning"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 293
    const-string v0, "content://com.evenwell.providers.weather/warning"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/watermark/Weather$PreWarning;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    return-void
.end method
