//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：2021-06-19 18:56:09
//备    注：此代码为工具生成 请勿手工修改
//===================================================
using YouYouServer.Core.DataTableBase;

namespace YouYouServer.Model.DataTable
{
    /// <summary>
    /// Chapter实体
    /// </summary>
    public partial class ChapterEntity : DataTableEntityBase
    {
        /// <summary>
        /// 章名称
        /// </summary>
        public string ChapterName;

        /// <summary>
        /// 拥有关卡个数
        /// </summary>
        public int GameLevelCount;

        /// <summary>
        /// 背景图
        /// </summary>
        public string BG_Pic;

        /// <summary>
        /// Uvx
        /// </summary>
        public float Uvx;

        /// <summary>
        /// Uvy
        /// </summary>
        public float Uvy;

    }
}