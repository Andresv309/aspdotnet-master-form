using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Collections.Specialized.BitVector32;

namespace master_form.Views.Pages
{
    public partial class Repository : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            fileUploadSectionEdition.Visible = false;
        }

        protected void fileUploadButton_Click(object sender, EventArgs e)
        {
            if (fileUpload.HasFile && fileUpload.PostedFile.ContentType == "text/plain" && fileUpload.PostedFile.FileName.EndsWith(".txt"))
            {
                fileUploadSectionLoad.Visible = false;
                fileUploadSectionEdition.Visible = true;

                fileName.Text = fileUpload.FileName;

                string fileContent = string.Empty;

                using (var reader = new System.IO.StreamReader(fileUpload.PostedFile.InputStream))
                {
                    fileContent = reader.ReadToEnd();
                }

                fileData.Text = fileContent;

            } else
            {
                fileStatus.Text = "Tipo de archivo no válido";
            }
        }

        protected void fileDownloadNewData_Click(object sender, EventArgs e)
        {
            string updatedData = fileData.Text;

            string fileName = $"newFile-{Guid.NewGuid()}.txt";
            
            Response.ContentType = "text/plain";

            Response.AddHeader("content-disposition", "attachment;filename=" + fileName);

            Response.Write(updatedData);

            Response.End();
        }

        protected void fileUploadSectionClose_Click(object sender, EventArgs e)
        {
            fileData.Text = string.Empty;
            fileName.Text = string.Empty;
            fileUploadSectionLoad.Visible = true;
            fileUploadSectionEdition.Visible = false;

        }
    }
}